class Study < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '独学学習' },
    { id: 3, name: 'プログラミングスクール受講中' },
    { id: 4, name: 'プログラミングスクール卒業済み' },
    { id: 5, name: '転職活動中' },
    { id: 6, name: '内定獲得' },
    { id: 7, name: '駆け出しエンジニア' }
  ]

  include ActiveHash::Associations
  has_many :users
end
