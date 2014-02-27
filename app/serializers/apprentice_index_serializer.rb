class ApprenticeIndexSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :completion_percentage, :picture_url
end

