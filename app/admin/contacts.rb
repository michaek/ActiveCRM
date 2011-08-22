ActiveAdmin.register Contact do

  filter :lead
  filter :assigned_to
  filter :first_name
  filter :last_name
  filter :access

  index do
    column :name
    column :title
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :first_name
      f.input :last_name
      f.input :description
      f.input :assigned_to
      f.input :lead
      f.input :access, :as => :select, :include_blank => false, :collection => Account.access_levels
      f.input :department
      f.input :source
      f.input :born_on, :as => :string, :input_html => {:class => :datepicker}
      f.input :login
    end
    f.buttons
  end

end
