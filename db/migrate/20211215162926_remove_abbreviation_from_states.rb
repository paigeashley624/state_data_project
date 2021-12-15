class RemoveAbbreviationFromStates < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :abbreviation, :string
    remove_column :states, :code, :string
  end
end
