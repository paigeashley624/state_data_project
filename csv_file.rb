
states = {}

File.foreach("lib/abbreviations.csv") do |line|
  state_array = line.chomp.split(",")
  state_name = state_array[0]
  state_abr = state_array[2]
  states[state_abr] = state_name
end

p states["MA"]