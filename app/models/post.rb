class Post < ActiveRecord::Base
  has_attached_file :picture,
    styles: { medium: "400x400>", thumb: "100x100>" }
  belongs_to :user

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
