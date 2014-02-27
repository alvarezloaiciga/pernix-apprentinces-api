class Api::V1::CustomDevise::SessionsController < Api::V1::ApiController
  before_filter :authenticate_apprentice!, except: [:create]
  before_filter :user_needed, except: [:create]
  before_filter :ensure_email_param_exists, only: [:create]
  before_filter :ensure_password_param_exists, only: [:create]

  def create
    resource = Apprentice.find_for_database_authentication(email: params[:email])
    return invalid_login_attempt unless resource

    if resource.valid_password?(params[:password])
      sign_in(:apprentice, resource)
      resource.ensure_authentication_token
      render json: { success: true,
                     auth_token: resource.authentication_token,
                     user_id: resource.id }, status: :created
    else
      invalid_login_attempt
    end
  end

  def destroy
    current_user.reset_authentication_token
    render json: { success: true }, status: :ok
  end

  protected
  def ensure_email_param_exists
    ensure_param_exists :email
  end

  def ensure_password_param_exists
    ensure_param_exists :password
  end

  def ensure_param_exists(param)
    return if params[param].present?
    render json:{ success: false, message: "Missing #{param} parameter"}, status: :unprocessable_entity
  end

  def invalid_login_attempt
    render json: { success: false, message: "Error with your login or password"}, status: :unauthorized
  end
end
