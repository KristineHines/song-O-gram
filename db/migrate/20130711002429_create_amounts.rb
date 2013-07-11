class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.integer :number, null: false
      t.timestamps
    end
  end
end
