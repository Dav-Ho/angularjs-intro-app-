class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :dad
      t.string :mom

      t.timestamps null: false
    end
  end
end
