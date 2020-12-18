class Calculation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :personality

  with_options presence: true do
    validates :name, length: { maximum: 6 }, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :personality_id, numericality: { other_than: 1 }
    validates :race_num
    validates :individual_num
    validates :effort_num
    validates :change_num
    validates :ability_id
    validates :tool_id
  end
end