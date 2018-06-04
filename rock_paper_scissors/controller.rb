require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/game')
also_reload('models/*')

get '/' do #if browser has this
  erb(:home) #open this
end

get '/play_game' do
  erb(:play_game)
end

get '/play_game/:player' do
  @game = Game.new(params[:player])
  # @winner = @game.play()
  erb(:result)
end
