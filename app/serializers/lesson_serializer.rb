class LessonSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :title
  has_many :tasks
end
