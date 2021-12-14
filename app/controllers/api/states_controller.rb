
class Api::StatesController < ApplicationController
  require 'csv'
  def index
    @states = State.all.order(:state)

    # @message = "Hello!"
    render "index.json.jb"
  end

end