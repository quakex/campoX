class AddUsernameLowerToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username_lower, :string
  end
end
