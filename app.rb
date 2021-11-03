require 'sinatra/base'
require 'sinatra/reloader'
 
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
     session[:player_1] = params[:player_1]
     session[:player_2] = params[:player_2]
     redirect '/play'
   end

   get '/play' do
     @player_1 = session[:player_1]
     @player_2 = session[:player_2]
     erb(:player)
   end
   
   get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :attack
  end
 end
  