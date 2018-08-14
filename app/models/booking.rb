class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gear

  validates :start_date, presence: true, allow_blank: false
  validates :end_date, presence: true, allow_blank: false
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_in_the_past
  validate :end_after_start_date

  def start_date_cannot_be_in_the_past
    if start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_cannot_be_in_the_past
    if end_date < Date.today
      errors.add(:end_date, "can't be in the past")
    end
  end

    def end_after_start_date
    if start_date > end_date
      errors.add(:end_date, "can't be before the starting date")
    end
  end

end
