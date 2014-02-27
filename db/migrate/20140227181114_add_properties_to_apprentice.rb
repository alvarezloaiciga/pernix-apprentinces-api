class AddPropertiesToApprentice < ActiveRecord::Migration
  def change
    add_column :apprentices, :name, :string
    add_column :apprentices, :description, :text
    add_column :apprentices, :completion_percentage, :float, default: 0.0
    add_column :apprentices, :picture_url, :string, default: "http://pernix.cr/images/team/male.png"
  end
end
