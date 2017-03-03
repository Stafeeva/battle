require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_one = Player.new(params[:player_one])
    player_two = Player.new(params[:player_two])
    $new_game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $new_game
    erb :play
  end

  get '/attack' do
    @game = $new_game
    @game.attack(@game.player_two)
    erb :attack
  end

  get '/next_round' do
    @game = $new_game
    @game.switch
    erb :play
  end

  run! if app_file == $0
end
