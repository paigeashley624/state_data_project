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



