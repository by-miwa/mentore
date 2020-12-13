class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ECサイト' },
    { id: 3, name: 'コミュニティ' },
    { id: 4, name: 'マッチング' },
    { id: 5, name: 'グローバル' },
    { id: 6, name: 'IT関連' },
    { id: 7, name: 'エンタメ' },
    { id: 8, name: 'スポーツ' },
    { id: 9, name: 'グルメ' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :prototypes
end
