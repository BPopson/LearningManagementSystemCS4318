class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.index ["username"], name: "index_students_on_username", unique: true

      t.timestamps
    end
  end
end
