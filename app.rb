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
    @player_1_hp = $game.player1.hp
    @player_2_hp = $game.player2.hp
    erb(:play)
  end

  get '/attack' do
    p @player_1 = $game.player1
    p @player_2 = $game.player2
    p $game.attack($game.next_turn)
    erb(:attack)
  end

  run! if app_file == $0
end
