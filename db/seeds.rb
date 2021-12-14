require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CSV.foreach(Rails.root.join('lib/abbreviations.csv'),headers:true) do |line|
#   Board.create({
#     puzzle:row[0],
#     solution:row[1]
#   })
#  end   

# File.foreach("lib/abbreviations.csv") do |line|
#   state_array = line.chomp.split(",")
#   state_name = state_array[0]
#   state_abr = state_array[2]
#   states[state_abr] = state_name
# end

# --------
# is there a way for this way to work? 

# State.create([

#   File.foreach("lib/abbreviations.csv") do |line|
#     state_array = line.chomp.split(",")
#     state_name = state_array[0]
#     state_abr = state_array[2]
#     states[state_abr] = state_name
#   end

# ])
# ----------

State.create([
  {state_name: "Michigan", median_income: "52005", unemployed_population: "0.05", metro_area_population: "0.87", highschool_degree: "0.879", abbreviation: "Mich.", code: "MI"},
  {state_name: "Minnesota", median_income: "67244", unemployed_population: "0.038", metro_area_population: "0.75", highschool_degree: "0.915", abbreviation: "Minn.", code: "MN"},
  {state_name: "Mississippi", median_income: "35521", unemployed_population: "0.061", metro_area_population: "0.45", highschool_degree: "0.804", abbreviation: "Miss.", code: "MS"},
  {state_name: "Missouri", median_income: "56630", unemployed_population: "0.053", metro_area_population: "0.78", highschool_degree: "0.868", abbreviation: "Mo.", code: "MO"},
  {state_name: "Montana", median_income: "51102", unemployed_population: "0.041", metro_area_population: "0.34", highschool_degree: "0.908", abbreviation: "Mont.", code: "MT"},
  {state_name: "Nebraska", median_income: "56870", unemployed_population: "0.029", metro_area_population: "0.6", highschool_degree: "0.898", abbreviation: "Nebr.", code: "NE"},
  {state_name: "Nevada", median_income: "49875", unemployed_population: "0.067", metro_area_population: "0.87", highschool_degree: "0.839", abbreviation: "Nev.", code: "NV"},
  {state_name: "New Hampshire", median_income: "73397", unemployed_population: "0.034", metro_area_population: "0.63", highschool_degree: "0.913", abbreviation: "N.H.", code: "NH"},
  {state_name: "New Jersey", median_income: "65243", unemployed_population: "0.056", metro_area_population: "1", highschool_degree: "0.874", abbreviation: "N.J.", code: "NJ"},
  {state_name: "New Mexico", median_income: "46686", unemployed_population: "0.068", metro_area_population: "0.69", highschool_degree: "0.828", abbreviation: "N.M.", code: "NM"},
  {state_name: "New York", median_income: "54310", unemployed_population: "0.051", metro_area_population: "0.94", highschool_degree: "0.847", abbreviation: "N.Y.", code: "NY"},
  {state_name: "North Carolina", median_income: "46784", unemployed_population: "0.058", metro_area_population: "0.76", highschool_degree: "0.843", abbreviation: "N.C.", code: "NC"},
  {state_name: "North Dakota", median_income: "60730", unemployed_population: "0.028", metro_area_population: "0.5", highschool_degree: "0.901", abbreviation: "N.D.", code: "ND"},
  {state_name: "Ohio", median_income: "49644", unemployed_population: "0.045", metro_area_population: "0.75", highschool_degree: "0.876", abbreviation: "Ohio", code: "OH"},
  {state_name: "Oklahoma", median_income: "47199", unemployed_population: "0.044", metro_area_population: "0.59", highschool_degree: "0.856", abbreviation: "Okla.", code: "OK"},
  {state_name: "Oregon", median_income: "58875", unemployed_population: "0.062", metro_area_population: "0.87", highschool_degree: "0.891", abbreviation: "Ore.", code: "OR"},
  {state_name: "Pennsylvania", median_income: "55173", unemployed_population: "0.053", metro_area_population: "0.87", highschool_degree: "0.879", abbreviation: "Pa.", code: "PA"},
  {state_name: "Rhode Island", median_income: "58633", unemployed_population: "0.054", metro_area_population: "1", highschool_degree: "0.847", abbreviation: "R.I.", code: "RI"},
  {state_name: "South Carolina", median_income: "44929", unemployed_population: "0.057", metro_area_population: "0.79", highschool_degree: "0.836", abbreviation: "S.C.", code: "SC"},
  {state_name: "South Dakota", median_income: "53053", unemployed_population: "0.035", metro_area_population: "0.51", highschool_degree: "0.899", abbreviation: "S.D.", code: "SD"},
  {state_name: "Tennessee", median_income: "43716", unemployed_population: "0.057", metro_area_population: "0.82", highschool_degree: "0.831", abbreviation: "Tenn.", code: "TN"},
  {state_name: "Texas", median_income: "53875", unemployed_population: "0.042", metro_area_population: "0.92", highschool_degree: "0.799", abbreviation: "Tex.", code: "TX"},
  {state_name: "Alabama", median_income: "42278", unemployed_population: "0.06", metro_area_population: "0.64", highschool_degree: "0.821", abbreviation: "Ala.", code: "AL"},
  {state_name: "Alaska", median_income: "67629", unemployed_population: "0.064", metro_area_population: "0.63", highschool_degree: "0.914", abbreviation: "Alaska", code: "AK"},
  {state_name: "Arizona", median_income: "49254", unemployed_population: "0.063", metro_area_population: "0.9", highschool_degree: "0.842", abbreviation: "Ariz.", code: "AZ"},
  {state_name: "Arkansas", median_income: "44922", unemployed_population: "0.052", metro_area_population: "0.69", highschool_degree: "0.824", abbreviation: "Ark.", code: "AR"},
  {state_name: "California", median_income: "60487", unemployed_population: "0.059", metro_area_population: "0.97", highschool_degree: "0.806", abbreviation: "Calif.", code: "CA"},
  {state_name: "Colorado", median_income: "60940", unemployed_population: "0.04", metro_area_population: "0.8", highschool_degree: "0.893", abbreviation: "Colo.", code: "CO"},
  {state_name: "Connecticut", median_income: "70161", unemployed_population: "0.052", metro_area_population: "0.94", highschool_degree: "0.886", abbreviation: "Conn.", code: "CT"},
  {state_name: "Delaware", median_income: "57522", unemployed_population: "0.049", metro_area_population: "0.9", highschool_degree: "0.874", abbreviation: "Del.", code: "DE"},
  {state_name: "District of Columbia", median_income: "68277", unemployed_population: "0.067", metro_area_population: "1", highschool_degree: "0.871", abbreviation: "D.C.", code: "DC"},
  {state_name: "Florida", median_income: "46140", unemployed_population: "0.052", metro_area_population: "0.96", highschool_degree: "0.853", abbreviation: "Fla.", code: "FL"},
  {state_name: "Georgia", median_income: "49555", unemployed_population: "0.058", metro_area_population: "0.82", highschool_degree: "0.839", abbreviation: "Ga.", code: "GA"},
  {state_name: "Hawaii", median_income: "71223", unemployed_population: "0.034", metro_area_population: "0.76", highschool_degree: "0.904", abbreviation: "Hawaii", code: "HI"},
  {state_name: "Idaho", median_income: "53438", unemployed_population: "0.042", metro_area_population: "0.7", highschool_degree: "0.884", abbreviation: "Idaho", code: "ID"},
  {state_name: "Illinois", median_income: "54916", unemployed_population: "0.054", metro_area_population: "0.9", highschool_degree: "0.864", abbreviation: "Ill.", code: "IL"},
  {state_name: "Indiana", median_income: "48060", unemployed_population: "0.044", metro_area_population: "0.79", highschool_degree: "0.866", abbreviation: "Ind.", code: "IN"},
  {state_name: "Iowa", median_income: "57810", unemployed_population: "0.036", metro_area_population: "0.6", highschool_degree: "0.914", abbreviation: "Iowa", code: "IA"},
  {state_name: "Kansas", median_income: "53444", unemployed_population: "0.044", metro_area_population: "0.64", highschool_degree: "0.897", abbreviation: "Kans.", code: "KS"},
  {state_name: "Kentucky", median_income: "42786", unemployed_population: "0.05", metro_area_population: "0.56", highschool_degree: "0.817", abbreviation: "Ky.", code: "KY"},
  {state_name: "Louisiana", median_income: "42406", unemployed_population: "0.06", metro_area_population: "0.81", highschool_degree: "0.822", abbreviation: "La.", code: "LA"},
  {state_name: "Maine", median_income: "51710", unemployed_population: "0.044", metro_area_population: "0.54", highschool_degree: "0.902", abbreviation: "Maine", code: "ME"},
  {state_name: "Maryland", median_income: "76165", unemployed_population: "0.051", metro_area_population: "0.97", highschool_degree: "0.89", abbreviation: "Md.", code: "MD"},
  {state_name: "Massachusetts", median_income: "63151", unemployed_population: "0.046", metro_area_population: "0.97", highschool_degree: "0.89", abbreviation: "Mass.", code: "MA"},
  {state_name: "Utah", median_income: "63383", unemployed_population: "0.036", metro_area_population: "0.82", highschool_degree: "0.904", abbreviation: "Utah", code: "UT"},
  {state_name: "Vermont", median_income: "60708", unemployed_population: "0.037", metro_area_population: "0.35", highschool_degree: "0.91", abbreviation: "Vt.", code: "VT"},
  {state_name: "Virginia", median_income: "66155", unemployed_population: "0.043", metro_area_population: "0.89", highschool_degree: "0.866", abbreviation: "Va.", code: "VA"},
  {state_name: "Washington", median_income: "59068", unemployed_population: "0.052", metro_area_population: "0.86", highschool_degree: "0.897", abbreviation: "Wash.", code: "WA"},
  {state_name: "West Virginia", median_income: "39552", unemployed_population: "0.073", metro_area_population: "0.55", highschool_degree: "0.828", abbreviation: "W.Va.", code: "WV"},
  {state_name: "Wisconsin", median_income: "58080", unemployed_population: "0.043", metro_area_population: "0.69", highschool_degree: "0.898", abbreviation: "Wis.", code: "WI"},
  {state_name: "Wyoming", median_income: "55690", unemployed_population: "0.04", metro_area_population: "0.31", highschool_degree: "0.918", abbreviation: "Wyo.", code: "WY"}
])