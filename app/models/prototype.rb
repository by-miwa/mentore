class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :title, presence: true
  validates :text, presence: true
  validates :concept, presence: true
  validates :appli, presence: true
  validates :github, presence: true
  validates :genre_id, numericality: { other_than: 1 }
  validates :image, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
