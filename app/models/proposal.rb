class Proposal < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_rich_text :description
end
