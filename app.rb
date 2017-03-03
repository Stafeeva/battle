require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $new_game = Game.new(Player.new(params[:player_one]), Player.new(params[:player_two]))
    redirect('/play')
  end

  get '/play' do
    @game = $new_game
    erb(:play)
  end

  get '/attack' do
    @game = $new_game
    @game.attack(@game.player_two)
    erb(:attack)
  end

  run! if app_file == $0
end
