class Task < ActiveRecord::Base
  belongs_to :lesson

  default_scope ->{ order(:id) }
end
