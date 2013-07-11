class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :type, null: false
      t.string :url, null: false
      t.references :recipe
      t.references :direction
      t.timestamps
    end
  end
end
