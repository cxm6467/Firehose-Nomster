class Photo < ApplicationRecord
  belongs_to :place

  mount_uploader :PictureUploader, PictureUploader
end
