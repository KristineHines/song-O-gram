class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
