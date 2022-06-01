class Proposal < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_rich_text :description

  validates :title, presence: { strict: true }, length: { maximum: 30 }
  validates :description, presence: { strict: true }

end
