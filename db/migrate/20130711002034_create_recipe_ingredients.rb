class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipeingredients do |t|
      t.references :recipe
      t.references :ingredient
      t.references :measurement
      t.references :amount
    end
  end
end
