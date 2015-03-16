ActiveAdmin.register Location do


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

  # Schema from Locations
  # t.string   "name"
  # t.text     "description"
  # t.string   "month"
  # t.datetime "created_at",  null: false
  # t.datetime "updated_at",  null: false
  # t.float    "latitude"
  # t.float    "longitude"
  # t.string   "address"

  index do
    selectable_column
    column :name
    column :month
    actions
  end

  # TO DO ---> form for location creation from active admin (autocomplete????)
  # form do |f|
  #   f.inputs "name" do
  #     f.input :name
  #   end
  #   f.inputs "Admin" do
  #     f.input :admin
  #   end
  #   f.inputs "Name" do
  #     f.input :name
  #   end
  #   f.inputs "Surname" do
  #     f.input :surname
  #   end
  #   f.inputs "Password" do
  #     f.input :password
  #   end
  #   f.inputs "Password confirmation" do
  #     f.input :password_confirmation
  #   end
  #   f.actions
  # end
  # redirect_to admin_dashboard_path

  # permit_params :name, :email, :admin, :name, :surname, :password, :password_confirmation

end
