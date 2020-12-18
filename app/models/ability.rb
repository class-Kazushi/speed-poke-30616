class Ability < ActiveHash::Base
  self.data = [
    { id: 1, name: '-----' },
    { id: 2, name: '特性補正なし' },
    { id: 3, name: '×1.5 (はやあし等)' },
    { id: 4, name: '×2 (ようりょくそ・かるわざ等)' },
    { id: 5, name: '×0.5 (スロースタート等)' }
  ]

  include ActiveHash::Associations
  has_many :calculations
  
end