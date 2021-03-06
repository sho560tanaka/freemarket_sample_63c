class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.text :description, null: false
      t.references :category, foreign_key: true
      t.references :products_size, foreign_key: true
      t.string :brand
      t.string :condition, null: false
      t.string :shipping_charges, null: false
      t.string :shipping_area, null: false
      t.string :days_to_delivery, null: false
      t.integer :price, null: false
      t.string :status, null: false
      t.timestamps
    end
  end
end
