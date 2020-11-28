class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :text, presence: true
  validates :concept, presence: true
  validates :image, presence: true, unless: :was_attached?
end
