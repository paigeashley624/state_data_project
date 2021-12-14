
class Api::StatesController < ApplicationController
  require 'csv'
  def index
    @states  = State.all

    # @message = "Hello!"
    render "index.json.jb"
  end

end