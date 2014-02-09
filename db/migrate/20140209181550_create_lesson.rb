class CreateLesson < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
    end
  end
end
