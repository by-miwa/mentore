class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :reed, presence: true
  validates :understand, presence: true
  validates :text, presence: true
  validates :action, presence: true
  validates :link, presence: true
  
  
end
