class Tool < ActiveHash::Base
  self.data = [
    { id: 1, name: '-----' },
    { id: 2, name: 'もちもの補正なし' },
    { id: 3, name: '×1.5 (こだわりスカーフ等)' },
    { id: 4, name: '×2.0 (スピードパウダー等)' },
    { id: 5, name: '×0.5 (くろいてっきゅう・ルームサービス等)' }
  ]

  include ActiveHash::Associations
  has_many :calculations
  
end
