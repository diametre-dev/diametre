class Post < ActiveRecord::Base
  has_attached_file :picture,
    styles: { medium: "400x400>", thumb: "100x100>" }
  belongs_to :user
  has_many :post_pictures, dependent: :destroy

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  accepts_nested_attributes_for :post_pictures, reject_if: lambda { |p| p['post_picture'].nil? }, allow_destroy: true
end
