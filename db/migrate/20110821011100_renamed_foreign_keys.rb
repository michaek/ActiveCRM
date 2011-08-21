class RenamedForeignKeys < ActiveRecord::Migration
  def up
    rename_column :accounts, :assigned_to, :assigned_to_id
    rename_column :campaigns, :assigned_to, :assigned_to_id
    rename_column :contacts, :assigned_to, :assigned_to_id
    rename_column :leads, :assigned_to, :assigned_to_id
    rename_column :opportunities, :assigned_to, :assigned_to_id
    rename_column :tasks, :assigned_to, :assigned_to_id
    rename_column :contacts, :reports_to, :reports_to_id
  end

  def down
    rename_column :accounts, :assigned_to_id, :assigned_to
    rename_column :campaigns, :assigned_to_id, :assigned_to
    rename_column :contacts, :assigned_to_id, :assigned_to
    rename_column :leads, :assigned_to_id, :assigned_to
    rename_column :opportunities, :assigned_to_id, :assigned_to
    rename_column :tasks, :assigned_to_id, :assigned_to
    # rename_column :contacts, :reports_to_id, :reports_to
  end
end