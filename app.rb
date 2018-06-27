require 'sinatra/base'

class Battle < Sinatra::Base
get '/' do
  erb :index
end

post '/names' do
  @player1 = params[:player1_name]
  @player2 = params[:player2_name]
  erb :names
end

run! if app_file == $0


end
