require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do 
    'Rock Paper Scissors'
    'Testing infastructure working!'
  end
  run! if app_file == $0  
end
