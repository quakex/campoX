class AddEmailLowerToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email_lower, :string
  end
end
