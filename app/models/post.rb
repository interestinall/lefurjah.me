class Post < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { large: "600x600", medium: "300x300>", thumb: "100x100>" }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
