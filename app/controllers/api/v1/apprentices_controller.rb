class Api::V1::ApprenticesController < Api::V1::ApiController
  skip_before_filter :user_needed, :only => :index
  skip_before_filter :authenticate_apprentice_from_token!, :only => :index

  def index
    render json: Apprentice.all, each_serializer: ApprenticeIndexSerializer
  end

  def find
    render json: Apprentice.find(params[:id])
  end
end
