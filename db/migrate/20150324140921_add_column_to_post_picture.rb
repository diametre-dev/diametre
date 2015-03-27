class AddColumnToPostPicture < ActiveRecord::Migration
  def change
    add_column :post_pictures, :title , :string
    add_column :post_pictures, :subtitle , :string
    add_column :post_pictures, :description , :string
  end
end
