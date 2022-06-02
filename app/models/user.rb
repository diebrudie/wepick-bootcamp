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
  has_many :friendships_as_reciever, class_name: "Friendship", foreign_key: :reciever_id, dependent: :destroy

  has_one_attached :photo

  validates :username, presence: { strict: true }, uniqueness: { case_sensitive: false }, length: { in: 6..20 }
  validates :email, presence: { strict: true }, uniqueness: { case_sensitive: false }, length: { in: 6..20 }
  validates :first_name, presence: { strict: true }
  validates :last_name, presence: { strict: true }

end
