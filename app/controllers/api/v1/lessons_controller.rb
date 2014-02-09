class Api::V1::LessonsController < Api::V1::ApiController
  def index
    render json: Lesson.all
  end
end
