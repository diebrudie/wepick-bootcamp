class Activity < ApplicationRecord
  belongs_to :user
  has_many :proposals, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: { strict: true }, length: { maximum: 45 }
  validates :type, presence: { strict: true }
  validates :activity_date, presence: { strict: true }
  validates :deadline_date, presence: { strict: true }
end
