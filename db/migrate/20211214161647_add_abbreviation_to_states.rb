class AddAbbreviationToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :abbreviation, :string 
    add_column :states, :code, :string 
    rename_column :states, :name, :state_name
  end
end
