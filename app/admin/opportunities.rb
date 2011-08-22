ActiveAdmin.register Opportunity do

  filter :assigned_to
  filter :name
  filter :access

  index do
    column :name
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :assigned_to
      f.input :access, :as => :select, :include_blank => false, :collection => Account.access_levels
      f.input :campaign
      f.input :account
      f.input :contact
      f.input :source
      f.input :stage
      f.input :probability
      f.input :amount
      f.input :discount
      f.input :closes_on, :as => :string, :input_html => {:class => :datepicker}
      f.input :amount
    end
    f.buttons
  end
  
end
