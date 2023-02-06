class Event < ApplicationRecord

 belongs_to :customer
 has_many :comments, dependent: :destroy
 has_many :guests, dependent: :destroy
 accepts_nested_attributes_for :guests, allow_destroy: true
 belongs_to :place

 validates :title, presence: true
 validates :meet_place, presence: true

end
