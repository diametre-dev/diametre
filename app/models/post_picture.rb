class PostPicture < ActiveRecord::Base
  belongs_to :post

  has_attached_file :picture,
    styles: { medium: "400x400>", thumb: "100x100>" }
  validates_attachment_presence :picture
  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
