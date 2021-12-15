class CreateStateAbbreviations < ActiveRecord::Migration[6.1]
  def change
    create_table :state_abbreviations do |t|
      t.string :name
      t.string :abbrev
      t.string :code 
      t.timestamps
    end
  end
end
