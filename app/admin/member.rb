ActiveAdmin.register Member do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    selectable_column
    column :name
    column :job
    column :picture
    actions
  end

  form do |f|
    f.inputs "Name" do
      f.input :name
    end
    f.inputs "Description" do
      f.input :description
    end
    f.inputs "Job" do
      f.input :job
    end
    f.inputs "Picture" do
      f.input :picture
    end
    f.actions
  end
  # redirect_to admin_dashboard_path

  permit_params :name, :description, :job, :picture

end
