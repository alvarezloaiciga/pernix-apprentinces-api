class CreateTask < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :objective
      t.belongs_to :lesson, index: true
    end
  end
end
