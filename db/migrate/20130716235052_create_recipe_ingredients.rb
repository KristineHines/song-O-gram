class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.integer :amount
      t.references :recipe
      t.references :measurement
      t.references :ingredient
      t.timestamps
    end
  end
end
