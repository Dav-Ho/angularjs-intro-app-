class ChangeCategoryIdToInteger < ActiveRecord::Migration
  def change
    change_column :contact_groups, :category_id,'integer USING CAST(category_id AS integer)'

  end
end
