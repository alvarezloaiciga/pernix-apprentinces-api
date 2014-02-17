class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.string :github
      t.string :email
    end
  end
end
