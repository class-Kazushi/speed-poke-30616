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

  def self.result(personality_id, race_num, individual_num, effort_num, change_id, ability_id, tool_id, status_id)
    personality_id = 2
    change_id = 1
    ability_id = 2
    tool_id = 2
    status_id = 2

    case personality_id
    when 2
      personality = 1.1
    when 3
      personality = 1.0
    when 4
      personality = 0.9
    end

    case change_id
    when 1
      change = 1
    when 2
      change = 1.5
    when 3
      change = 2
    when 4
      change = 2.5
    when 5
      change = 3
    when 6
      change = 3.5
    when 7
      change = 4
    when 8
      change = 2/3
    when 9
      change = 1/2
    when 10
      change = 2/5
    when 11
      change = 1/3
    when 12
      change = 2/7
    when 13
      change = 1/4
    end

    case ability_id
    when 2
      ability = 1
    when 3
      ability = 1.5
    when 4
      ability = 2
    when 5
      ability = 1/2
    end

    case tool_id
    when 2
      ability = 1
    when 3
      ability = 1.5
    when 4
      ability = 2
    when 5
      ability = 0.5
    end

    case status_id
    when 2
      ability = 1
    when 3
      ability = 2
    when 4
      ability = 1/2
    end

    ((race_num + individual_num / 2 + effort_num / 8) + 5) * personality * change * ability * tool * status
  end

end