class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '-----' },
    { id: 2, name: 'その他補正なし' },
    { id: 3, name: '×2.0 (おいかぜ)' },
    { id: 4, name: '×0.5 (まひ状態)' }
  ]

  include ActiveHash::Associations
  has_many :calculations
end