class AddOperatorFieldsToModels < ActiveRecord::Migration
  def change
    
    [:account_contacts, :accounts, :activities, :addresses, :campaigns, :contacts,
      :contact_data, :emails, :leads, :opportunities, :tasks].each do |s|
      add_column s, :created_by, :integer
      add_column s, :updated_by, :integer
      add_column s, :deleted_by, :integer
    end
    
    [:accounts, :activities, :campaigns, :contacts,
      :contact_data, :emails, :leads, :opportunities, :tasks].each do |s|
      remove_column s, :user_id, :integer
    end

  end
end
