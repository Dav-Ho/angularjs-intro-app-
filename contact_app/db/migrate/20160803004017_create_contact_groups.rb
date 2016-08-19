class CreateContactGroups < ActiveRecord::Migration
  def change
    create_table :contact_groups do |t|
      t.string :category_id
      t.string :contact_id

      t.timestamps null: false
    end
  end
end
