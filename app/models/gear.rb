class Gear < ApplicationRecord


  def self.categories
    %w[Hiking Biking Martial-Arts Diving Sky-Diving]
  end

  has_many :bookings
  belongs_to :user

  validates :category, inclusion: { in: Gear.categories }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :name, presence: true

  mount_uploader :photo, PhotoUploader

end
