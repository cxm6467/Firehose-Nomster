class Photo < ApplicationRecord
  belongs_to :place

  mount_uploader :photo, PictureUploader
end
