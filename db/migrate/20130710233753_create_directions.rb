class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.string :text, null: false
      t.integer :number, null: false
      t.references :recipe
      t.timestamps
    end
  end
end
