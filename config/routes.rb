

Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  # namespace :api do
  #   get "/states", controller: "states", action: "index"

  # end



  File.foreach("abbreviations.csv") do |line|
   state_array = line.split(",")
   p state_array
  end   
end

