class Api::V1::AppliesController < Api::V1::ApiController
  def create
    apply = Apply.new(new_apply_params)
    if apply.save
      render json: apply
    else
      render json: { :errors => apply.errors.full_messages }, :status => 422
    end
  end

  private
  def new_apply_params
    params.require(:apply).permit(:github, :email)
  end
end
