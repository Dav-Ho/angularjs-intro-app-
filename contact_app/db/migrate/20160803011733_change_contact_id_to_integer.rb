class ChangeContactIdToInteger < ActiveRecord::Migration
  def change
    change_column :contact_groups, :contact_id,'integer USING CAST(contact_id AS integer)'
  end
end
