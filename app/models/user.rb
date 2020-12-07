class User < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation
  belongs_to :study
  belongs_to :age

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX
    
  with_options presence: true do
    validates :name
    validates :profile
    validates :occupation_id
    validates :study_id
    validates :age_id
    validates :sns
  end

    validates :occupation_id, numericality: { other_than: 1 }
    validates :study_id, numericality: { other_than: 1 }
    validates :age_id, numericality: { other_than: 1 }

    VALID_YOUTUBE_URL = /(\Ahttps:\/\/www\.youtube\.com\/watch\?v=)+[\w]{11}\z/
    validates :youtube_url, format: { with: VALID_YOUTUBE_URL }
    「https://www.youtube.com/watch?v=」
      https://twitter.com/by_miwa30

    has_many :prototypes
    has_many :comments
    has_many :books
end