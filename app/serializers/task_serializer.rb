class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :objective
end
