class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one :order

  has_many :event_tags, dependent: :destroy  #中間テーブル
  has_many :tags, through: :event_tags  #tagのアソシエーション

  validates :concept, presence: true
  validates :place, presence: true
  validates :period, presence: true
  validates :image, presence: true
end
