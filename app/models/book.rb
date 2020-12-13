class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :understand, presence: true
  validates :text, presence: true
  validates :link, presence: true
  validates :image, presence: true, unless: :was_attached?

  validates :link, format: { with: /amazon.co.jp/ }

  def was_attached?
    image.attached?
  end
end
