class CreateCalculations < ActiveRecord::Migration[6.0]
  def change
    create_table :calculations do |t|
      t.string :name,            null: false
      t.integer :personality_id, null: false
      t.integer :race_num,       null: false
      t.integer :individual_num, null: false
      t.integer :effort_num,     null: false
      t.integer :change_num,     null: false
      t.integer :ability_id,     null: false
      t.integer :tool_id,        null: false
      t.integer :status_id,      null: false
      t.timestamps
    end
  end
end
