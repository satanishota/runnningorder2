class Event < ApplicationRecord
  has_many :entrys, dependent: :destroy
  has_many :entrys_users, through: :entrys, source: :user
  has_one :map, dependent: :destroy
end
