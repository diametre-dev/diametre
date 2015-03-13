ActiveAdmin.register Post do
  permit_params :title, :subtitle, :description, :picture # etc...
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

  # the button doesn't work correctly ---> to do !!!!
  action_item do
    link_to "Create a new post", new_admin_post_path
  end

  form do |f|
    f.inputs "Title" do
      f.input :title
    end
    f.inputs "Subtitle" do
      f.input :subtitle
    end
    f.inputs "Description" do
      f.input :description
    end
    f.inputs "Picture" do
      f.input :picture
    end
    f.actions
  end

end
