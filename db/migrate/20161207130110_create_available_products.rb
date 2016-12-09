class CreateAvailableProducts < ActiveRecord::Migration
  def change
    create_table :available_products do |t|
      t.references :product, index: true
      t.references :color, index: true
      t.references :size, index: true
      t.integer :quantity

      t.timestamps null: false
    end
    add_foreign_key :available_products, :products
    add_foreign_key :available_products, :colors
    add_foreign_key :available_products, :sizes
  end
end
