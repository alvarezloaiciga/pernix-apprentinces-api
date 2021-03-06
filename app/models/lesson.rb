class Lesson < ActiveRecord::Base
  has_many :tasks
  accepts_nested_attributes_for :tasks

  default_scope ->{ order(:id) }
end
