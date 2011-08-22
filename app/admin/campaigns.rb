ActiveAdmin.register Campaign do

  filter :assigned_to
  filter :name
  filter :access
  filter :status

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
      f.input :status, :as => :select, :include_blank => false, :collection => Account.access_levels
      f.input :objectives
      f.input :target_leads
      f.input :target_conversion
      f.input :budget
      f.input :revenue
    end
    f.buttons
  end

end
