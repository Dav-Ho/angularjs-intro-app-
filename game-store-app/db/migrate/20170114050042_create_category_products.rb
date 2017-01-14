class CreateCategoryProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :category_products do |t|
      t.string :category_id
      t.string :integer
      t.integer :product_id

      t.timestamps
    end
  end
end
