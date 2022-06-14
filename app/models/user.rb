class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :proposals, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :votes, dependent: :destroy


  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id, dependent: :destroy
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id, dependent: :destroy

  has_one_attached :photo


  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 6..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { in: 6..20 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :photo, attached: true



  def part_of(user_one, user_two)
    x = user_one.activity_ids
    y = user_two.activity_ids
    z = x & y # => [2, 4]
    z.count
  end


end
