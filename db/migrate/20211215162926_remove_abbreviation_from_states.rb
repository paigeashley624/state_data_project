class RemoveAbbreviationFromStates < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :abbreviation, :string
    remove_column :states, :code, :string
    change_column :states, :unemplyed_population, :decimal
    change_column :states, :metro_area_population, :decimal

  end
end
