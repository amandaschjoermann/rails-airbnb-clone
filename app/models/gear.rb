class Gear < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.categories
    %w[Hiking Biking Martial-Arts Diving Sky-Diving]
  end

  has_many :bookings
  belongs_to :user

  validates :category, inclusion: { in: Gear.categories }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :name, presence: true
  validates :address, presence: true, :allow_blank => false

  mount_uploader :photo, PhotoUploader

end
