require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
   configure :development do
     register Sinatra::Reloader
   end

  #  get '/' do
  #   'Testing infrastucture working!'
  #  end
  enable :sessions
   get '/' do
     erb(:index)
   end

   post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
     redirect '/play'
   end

   get '/play' do
    @game = $game
     erb(:player)
   end

   get '/attack' do
    @game = $game

    $game.attack(@game.opponent)
    erb :attack
  end

    post '/change_turn' do
      $game.change_active
      redirect '/play'
  end
 end
  