class ChangeDataTypeFromStates < ActiveRecord::Migration[6.1]
  def change
    rename_column :states, :unemplyed_population, :unemployed_population
  end
end
