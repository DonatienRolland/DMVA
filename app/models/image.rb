class Image < ApplicationRecord
  belongs_to :article

  mount_uploader :photo, PhotoUploader
  # has_attached_file :photo, :styles => { :large => "960x640>", :medium => "300x300>", :thumb => "150x150>" }, :storage => :cloudinary

end
