class GearPic < ApplicationRecord
  belongs_to :gear
  mount_uploader :photo, PhotoUploader
end
