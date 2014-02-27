class AddAuthenticationTokenToApprentice < ActiveRecord::Migration
  def change
    add_column :apprentices, :authentication_token, :string
  end
end
