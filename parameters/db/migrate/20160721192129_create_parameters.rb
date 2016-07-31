class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :first_name 
      t.string :last_name
      t.string :email

      t.timestamps null: false
    end
  end
end
