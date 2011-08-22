ActiveAdmin.register Lead do

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
      f.input :first_name
      f.input :last_name
      f.input :description
      f.input :assigned_to
      f.input :access, :as => :select, :include_blank => false, :collection => Account.access_levels
      f.input :status, :as => :select, :include_blank => false, :collection => Account.access_levels
      f.input :campaign
      f.input :source
      f.input :referred_by
      f.input :rating
    end
    f.buttons
  end

end
