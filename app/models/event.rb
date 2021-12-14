class Event < ApplicationRecord
  has_many :entrys, dependent: :destroy
  has_many :entrys_users, through: :entrys, source: :user
  has_one :map, dependent: :destroy
  
  has_many :favorites, dependent: :destroy
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
