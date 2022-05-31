class Activity < ApplicationRecord
  belongs_to :user
  has_many :proposals, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_one_attached :photo
end
