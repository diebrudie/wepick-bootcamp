class Proposal < ApplicationRecord

  belongs_to :user
  belongs_to :activity
  has_rich_text :description
  has_many :votes, dependent: :destroy

  validates :title, presence: true, length: { maximum: 30 }
  validates :description, presence: true
end
