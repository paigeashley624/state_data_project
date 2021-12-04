class Api::StatesController < ApplicationController
  def index
    @states  = state.all

    # @message = "Hello!"
    render "index.json.jb"
  end

end