ActiveAdmin.register User do

  index do
    column :name
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :email
      f.input :contact
    end
    f.buttons
  end

end
