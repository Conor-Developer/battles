require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'



class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player1.name
    @player_2 = $game.player2.name
    @player_2_hp = $game.player2.hp
    erb(:play)
  end

  get '/attack' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    $game.attack($game.next_turn)
    erb(:attack)
  end

  run! if app_file == $0
end
