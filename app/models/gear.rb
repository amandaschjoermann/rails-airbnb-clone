class Gear < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.categories
    %w[In-Water Above-Ground On-Land]
  end

  has_many :bookings, dependent: :destroy
  has_many :gear_pics
  belongs_to :user

  validates :category, inclusion: { in: Gear.categories }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :name, presence: true
  validates :address, presence: true, :allow_blank => false

  include PgSearch
  pg_search_scope :search_gears,
    against: [ :name, :description, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
