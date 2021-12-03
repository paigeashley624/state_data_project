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

states = {}

File.foreach("lib/abbreviations.csv") do |line|
  state_array = line.chomp.split(",")
  state_name = state_array[0]
  state_abr = state_array[2]
  states[state_abr] = state_name
end

p states
