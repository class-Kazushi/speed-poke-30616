class Calculation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :personality
  belongs_to :ability
  belongs_to :tool
  belongs_to :status
  belongs_to :change

  with_options presence: true do
    validates :name, length: { maximum: 6 }, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :personality_id, numericality: { other_than: 1 }
    validates :race_num, numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 200 }
    validates :individual_num, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 31 }
    validates :effort_num, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 252 }
    validates :change_num, numericality: { greater_than_or_equal_to: -6, less_than_or_equal_to: 6 }
    validates :ability_id, numericality: { other_than: 1 }
    validates :tool_id, numericality: { other_than: 1 }
    validates :status_id, numericality: { other_than: 1 }
  end
end