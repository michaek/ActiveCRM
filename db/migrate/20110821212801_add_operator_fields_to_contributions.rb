class AddOperatorFieldsToContributions < ActiveRecord::Migration
  def change
    
    [:contributions].each do |s|
      add_column s, :created_by, :integer
      add_column s, :updated_by, :integer
      add_column s, :deleted_by, :integer
    end
    
    [:contributions].each do |s|
      remove_column s, :user_id, :integer
    end

  end
end
