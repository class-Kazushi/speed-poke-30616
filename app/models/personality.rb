class Personality < ActiveHash::Base
  self.data = [
    { id: 1, name: '-----' },
    { id: 2, name: '×1.1 (ようき・おくびょう等)' },
    { id: 3, name: '×1.0 (性格補正なし)' },
    { id: 4, name: '×0.9 (ゆうかん・れいせい等)' },
  ]

  include ActiveHash::Associations
  has_many :calculations
  
end
