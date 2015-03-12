ActiveAdmin.register User do


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
    column :email
    column :name
    column :surname
    column :last_sign_in_at
    column :provider
    column :admin
    actions
  end

  #create a route pointing to Admin::UserController#activate (cf below)
  member_action :activate, method: :patch

  #create a button admin the user on ActiveAdmin show view for User
  action_item :activate, only: :show do
    link_to("Set the User as admin", activate_admin_user_path(resource), method: :patch)
  end

  controller do
    # This code is evaluated within the controller class

    def activate
      resource.update_attribute(:admin, true)
      redirect_to admin_users_path
    end
  end

  form do |f|
    f.inputs "Email" do
      f.input :email
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.inputs "Name" do
      f.input :name
    end
    f.inputs "Surname" do
      f.input :surname
    end
    f.inputs "Password" do
      f.input :password
    end
    f.inputs "Password confirmation" do
      f.input :password_confirmation
    end
    f.actions
  end
  # redirect_to admin_dashboard_path

  permit_params :name, :email, :admin, :name, :surname, :password, :password_confirmation

end
