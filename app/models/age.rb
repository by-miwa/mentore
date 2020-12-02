class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' }, { id: 2, name: '18' }, { id: 3, name: '19' },
    { id: 4, name: '20' }, { id: 5, name: '21' }, { id: 6, name: '22' },
    { id: 7, name: '23' }, { id: 8, name: '24' }, { id: 9, name: '25' },
    { id: 10, name: '26' }, { id: 11, name: '27' }, { id: 12, name: '28' },
    { id: 13, name: '29' }, { id: 14, name: '30' }, { id: 15, name: '31' },
    { id: 16, name: '32' }, { id: 17, name: '33' }, { id: 18, name: '34' },
    { id: 19, name: '35' }, { id: 20, name: '36' }, { id: 21, name: '37' },
    { id: 22, name: '38' }, { id: 23, name: '39' }, { id: 24, name: '40' },
  ]

  include ActiveHash::Associations
  has_many :users
end
