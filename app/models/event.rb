class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one :spot
  validates :concept, presence: true
  validates :place, presence: true
  validates :period, presence: true
  validates :image, presence: true
end
