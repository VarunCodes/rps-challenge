require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :form
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  run! if app_file == $0
end
