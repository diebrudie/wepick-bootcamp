class Activity < ApplicationRecord
  belongs_to :user
  has_many :proposals, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: { strict: true }, length: { maximum: 30 }
  validates :activity_type, presence: { strict: true }
  validates :description, presence: { strict: true }, length: { maximum: 175 }
  validates :activity_date, presence: { strict: true }
  validates :deadline_date, presence: { strict: true }
  validate :deadline_before_activity?
  validate :activity_in_future?

  def activity_in_future?
    errors.add(:activity_date, "Your activity must take place on a date in the future!") unless (activity_date - Date.today).positive?
  end

  def deadline_before_activity?
    errors.add(:deadline_date, "Deadline date must be atleast a day before the activity date") unless (activity_date - deadline_date).positive?
  end
end
