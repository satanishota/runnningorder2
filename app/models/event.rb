class Event < ApplicationRecord
  has_many :entrys, dependent: :destroy
  has_many :entrys_users, through: :entrys, source: :user
end
