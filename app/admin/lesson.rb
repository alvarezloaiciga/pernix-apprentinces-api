ActiveAdmin.register Lesson do
  permit_params :title, :tasks
  actions :all

  index do |lesson|
    column :id
    column :title
    default_actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.has_many :tasks do |cf|
        cf.input :title
        cf.input :objective
        cf.input :description
      end
    end
    f.actions
  end

  show do |lesson|
    attributes_table do
      row(:title)
    end

    panel "Tasks" do
      table_for(lesson.tasks.order(:id)) do
        column :id do |task|
          link_to task.id, admin_task_path(task)
        end

        column :title
        column :objective
        column :description
      end
    end
  end
end
