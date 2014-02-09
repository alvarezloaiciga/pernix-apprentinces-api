ActiveAdmin.register Task do
  actions :all
  config.sort_order = "id_asc"

  index do |task|
    column :id
    column :title
    column :lesson
    default_actions
  end

  show do |lesson|
    attributes_table do
      row(:title)
      row(:objective)
      row(:description)
    end
  end
end
