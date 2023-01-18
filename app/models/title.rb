class Title < ActiveHash::Base
  
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '食費(食材)' },
    { id: 3, name: 'ディナー' },
    { id: 4, name: 'カフェ' },
    { id: 5, name: 'ランチ' },
    { id: 6, name: '趣味、娯楽' },
    { id: 7, name: '交際費' },
    { id: 8, name: '交通費' },
    { id: 9, name: '美容' },
    { id: 10, name: '衣服' },
    { id: 11, name: '電気' },
    { id: 12, name: 'ガス' },
    { id: 13, name: '水道' },
    { id: 14, name: '通信費' },
    { id: 16, name: '家賃' },
    { id: 17, name: 'カーローン' },
    { id: 18, name: 'その他ローン' }
  ]

  include ActiveHash::Associations
  
  belongs_to :account

  end