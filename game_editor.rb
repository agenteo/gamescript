require 'sinatra/base'
Tilt.register Tilt::ERBTemplate, 'html.erb'

class GameEditor < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    game_logic = GameLogic.new(params[:logic])
    game_logic.validate!

    if game_logic.errors.size > 0
      return game_logic.errors.inspect
    end
    'All valid!'
  end
end
