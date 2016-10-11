class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.text :bio
      t.string :username_lower
      t.string :email_lower
      t.timestamps
    end
  end
end
