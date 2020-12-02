class User < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation
  belongs_to :study
  belongs_to :age

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :name, presence: true
         validates :profile, presence: true
         validates :occupation, presence: true
         validates :study, presence: true
         validates :sns, presence: true
         validates :age, presence: true

         has_many :prototypes
         has_many :comments
end