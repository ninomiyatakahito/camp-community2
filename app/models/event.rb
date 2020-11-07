class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :concept, presence: true
  validates :place, presence: true
  validates :concept, presence: true
  validates :image, presence: true

 
end
end
