class AddAttachementPictureToPostPictureModel < ActiveRecord::Migration
  def self.up
    change_table :post_pictures do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :post_pictures, :picture
  end
end
