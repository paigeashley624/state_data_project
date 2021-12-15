require 'csv'

StateAbbreviation.delete_all

# CSV.parse(File.read("lib/abbreviations.csv"),headers: true).each do |line|
#   row_hash = line.to_h

#   StateAbbreviation.create!(
#     name:row_hash["State"], 
#     abbrev:row_hash["Abbrev"],
#     code:row_hash["Code"],
#   )
# end 

CSV.parse(File.read("lib/abbreviations.csv")).each_with_index do |line, index|
  next if index == 0 #or index.zero? 

  StateAbbreviation.create!(
    name:line[0], 
    abbrev:line[1],
    code:line[2],
  )
end 



State.delete_all
CSV.parse(File.read("lib/state_data.csv"),headers: true).each do |line|
  hash = line.to_hash
  State.create!(
    state_name: hash["state"],
    median_income: hash["median_household_income"],
    unemplyed_population: hash["share_unemployed_seasonal"],
    metro_area_population:hash["share_population_in_metro_areas"],  
    highschool_degree:hash["share_population_with_high_school_degree"],
  ) 
end 