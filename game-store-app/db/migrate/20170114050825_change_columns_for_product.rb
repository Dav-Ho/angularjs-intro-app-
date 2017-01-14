class ChangeColumnsForProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :product_id, :integer
    remove_column :products, :user_id, :integer
    remove_column :products, :quantity, :integer
    add_column :products, :name, :string
    add_column :products, :price, :integer
    add_column :products, :description, :text
    add_column :products, :supplier_id, :integer
  end
end
