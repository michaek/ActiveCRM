ActiveAdmin.register Account do

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
    end
    f.buttons
  end

end
