class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.decimal :median_income
      t.integer :unemplyed_population
      t.integer :metro_area_population
      t.string :highschool_degree

      t.timestamps
    end
  end
end
