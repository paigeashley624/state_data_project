
class Api::StatesController < ApplicationController
  require 'csv'
  def index
    @states = State.all

    # @message = "Hello!"
    render "index.json.jb"
  end

  def show
    #this line addresses the ":stateabbreviation" in routes though it could be named anything. We are storing this inside of "id" for now 
    binding.pry 
    id = params[:stateabbreviation]

    #abbreviation - within the StateAbbreviation table we are locating the key "code "that that matches the value of "id" placed the show route
    
    abbreviation = StateAbbreviation.find_by(code: id)

    name = abbreviation.name 

    @state = State.find_by(state_name: name)

    render "show.json.jb"
  end

end