class Event < ApplicationRecord
  has_many :entrys, dependent: :destroy
end
