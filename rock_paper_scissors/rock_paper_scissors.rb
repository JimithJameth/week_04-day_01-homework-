require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative'../models/game'

# get '/game1/:paper/:rock' do
#   return "#{params[:paper]} Hey you win"
# end

# get '/game2/:rock/:scissors' do
#   return "#{params[:rock]} Hey you win"
# end

# get '/game3/:paper/:scissors' do
#   return "#{params[:scissors]} Hey you win"
# end

# get '/game4/:paper1/:paper2' do
#   return "Hey its a draw"
# end

get '/game/:player_1/:player_2' do
  game = Game.new(params["player_1"], params["player_2"])
  @game = game.run
end

