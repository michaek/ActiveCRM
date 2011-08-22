class RenamedCompletedByOnTask < ActiveRecord::Migration
  def change
    rename_column :tasks, :completed_by, :completed_by_id
    add_column :tasks, :access, :integer
  end
end