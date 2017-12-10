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

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player_selection = session[:choice]
    erb :result
  end

  run! if app_file == $0
end
