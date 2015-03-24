class CreatePostPictures < ActiveRecord::Migration
  def change
    create_table :post_pictures do |t|
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_pictures, :posts
  end
end
