class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.references :rolable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
