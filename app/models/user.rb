class User < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation
  belongs_to :study
  belongs_to :age

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
         validates_format_of :password, with: PASSWORD_REGEX
         validates :occupation_id, numericality: { other_than: 1 }
         validates :study_id, numericality: { other_than: 1 }
         validates :age_id, numericality: { other_than: 1 }
         validates :name, presence: true
         validates :profile, presence: true
         validates :occupation, presence: true
         validates :study, presence: true
         validates :sns, presence: true
         validates :age, presence: true

         has_many :prototypes
         has_many :comments
end