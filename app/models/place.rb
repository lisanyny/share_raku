class Place < ApplicationRecord

  has_many :events, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode

end
