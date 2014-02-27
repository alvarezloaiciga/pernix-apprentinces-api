ActiveAdmin.register Apprentice do
  actions :all

  index do |lesson|
    column :id
    column :name
    column :description
    column :completion_percentage
    column :picture_url
    default_actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :description
      f.input :completion_percentage
      f.input :picture_url
    end
    f.actions
  end
end
