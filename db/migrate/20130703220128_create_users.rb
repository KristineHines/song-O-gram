class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username, unique: true, null: false
      t.string :email, unique: true, null: false
      t.string :password_digest
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
