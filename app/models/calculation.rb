class Calculation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :personality
  belongs_to :ability
  belongs_to :tool

  with_options presence: true do
    validates :name, length: { maximum: 6 }, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :personality_id, numericality: { other_than: 1 }
    validates :race_num
    validates :individual_num
    validates :effort_num
    validates :change_num
    validates :ability_id, numericality: { other_than: 1 }
    validates :tool_id, numericality: { other_than: 1 }
  end
end