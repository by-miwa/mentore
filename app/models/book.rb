class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :genre_id, numericality: { other_than: 1 }
  validates :understand, presence: true
  validates :text, presence: true
  validates :action, presence: true
  validates :link, presence: true
  
  
end
