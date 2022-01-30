class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.string :email
      t.integer :contact
      t.date :joining_date
      t.string :password_digest

      t.timestamps
    end
  end
end
