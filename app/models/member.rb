class Member < ActiveRecord::Base
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "200x200>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
  validates :name, presence: true
end
