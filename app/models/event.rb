class Event < ApplicationRecord
  has_many :entrys, dependent: :destroy
  has_many :entrys_users, through: :entrys, source: :user
  has_one :map, dependent: :destroy
  belongs_to :organizer
  has_many :favorites, dependent: :destroy
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  validates :name, presence: true
  validates :introduction, presence: true
  validates :place, presence: true
  validates :capacity, presence: true
  validates :day, presence: true
  validates :distance, presence: true
end
