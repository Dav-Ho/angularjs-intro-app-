class RemoveFloorsFromEstates < ActiveRecord::Migration
  def change
    remove_column :estates, :floors, :string
  end
end
