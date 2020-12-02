class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '営業系' },
    { id: 3, name: '企画・管理系' },
    { id: 4, name: '販売・サービス系' },
    { id: 5, name: '専門職系' },
    { id: 6, name: 'クリエイティブ系' },
    { id: 7, name: 'エンジニア系' },
    { id: 8, name: '電気・機械系' },
    { id: 9, name: '建築・土木系' },
    { id: 10, name: '医薬・食品系' },
    { id: 11, name: '運輸・物流系' },
    { id: 12, name: '公務員・団体職員' },
    { id: 13, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end
