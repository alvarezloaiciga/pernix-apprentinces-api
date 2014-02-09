class TaskSerializer < ActiveModel::Serializer
  attributes :title, :description, :objective
end
