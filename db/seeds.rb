require 'csv'

StateAbbreviation.delete_all
CSV.parse(File.read("lib/abbreviations.csv"), headers: true, header_converters: [:downcase, :symbol]).each do |line|
  # next if index == 0 #or index.zero? 
  # binding.pry
  p line
  StateAbbreviation.create!(
    name: line[:state], 
    abbrev: line[:abbrev],
    code: line[:code],
  )
end 

State.delete_all
CSV.parse(File.read("lib/state_data.csv"), headers: true).each do |line|
  # hash = line.to_hash
  State.create!(
    state_name: line["state"],
    median_income: line["median_household_income"],
    unemployed_population: line["share_unemployed_seasonal"],
    metro_area_population: line["share_population_in_metro_areas"],  
    highschool_degree: line["share_population_with_high_school_degree"],
  ) 
end 