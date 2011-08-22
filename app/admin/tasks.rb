ActiveAdmin.register Task do
  
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
      f.input :assigned_to
      f.input :completed_by
      f.input :access, :as => :select, :include_blank => false, :collection => Account.access_levels
      f.input :task_priority
      f.input :task_due
      f.input :task_category
      f.input :due_at
      f.input :completed_at
    end
    f.buttons
  end
  

end
