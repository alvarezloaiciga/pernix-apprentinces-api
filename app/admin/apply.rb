ActiveAdmin.register Apply do
  index do |lesson|
    column :id
    column :github
    column :email
    default_actions
  end
end
