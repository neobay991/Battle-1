require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player1_name])
    player_2 = Player.new(params[:player2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    Attack.run($game.opponent_of($game.current_turn))
    if $game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = $game
    # @game.attack(@game.opponent_of(@game.current_turn))
    # @game.switch_turns
    erb :attack
  end

  post '/switch_turns' do
    $game.switch_turns
    redirect '/play'
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end

  get '/game-over2' do
    erb :game_over
  end

  run! if app_file == $0
end
