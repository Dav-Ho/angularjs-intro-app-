class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :supplier_id, :integer
    remove_column :products, :status, :string
  end
end
