class Api::V1::ApiController < ApplicationController
  respond_to :json

  include Devise::Controllers::Helpers

  before_filter :authenticate_apprentice_from_token!

  before_filter :user_needed

  def user_needed
    unless current_apprentice
      render :json => {'error' => 'authentication error'}, :status => 401
    end
  end

  private

  def authenticate_apprentice_from_token!
    apprentice = Apprentice.find_by(authentication_token: params[:auth_token])
    if apprentice
      sign_in apprentice, store: false
    end
  end
end
