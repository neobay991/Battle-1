require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do

    $player_1 = Player.new(params[:player1_name])
    $player_2 = Player.new(params[:player2_name])

    redirect '/play'
  end

  get '/play' do

    @player1 = $player_1.name
    @player2 = $player_2.name

    erb :play
  end

  get '/attack' do

    @player1 = $player_1.name
    @player2 = $player_2.name

    erb :attack
  end

  run! if app_file == $0
end
