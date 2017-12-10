require 'sinatra/base'

class RPS < Sinatra::Base
  set :session_secret, 'super secret'

  get '/' do
    'Testing infrastructure working!'
  end
  run! if app_file == $0
end
