class CreateEstates < ActiveRecord::Migration
  def change
    create_table :estates do |t|
      t.string :description
      t.string :year_built
      t.string :square_feet
      t.string :bedrooms
      t.string :bathrooms
      t.string :floors
      t.string :availability
      t.string :price

      t.timestamps null: false
    end
  end
end