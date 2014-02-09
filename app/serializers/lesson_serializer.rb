class LessonSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :title
  has_many :tasks
end
