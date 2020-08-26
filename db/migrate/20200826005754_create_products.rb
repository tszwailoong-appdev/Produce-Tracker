class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :farm_id
      t.integer :product_category_id
      t.integer :units_in_stock
      t.string :photo

      t.timestamps
    end
  end
end
