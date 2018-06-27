require 'sinatra/base'

set :session_secret, 'super secret'

class Battle < Sinatra::Base
get '/' do
  "Welcome to the Battle"
end

run! if app_file == $0


end
