require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "password"
  end


  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params["item"]
    @session = session
    "<h1>#{@session["item"]}</h1>"
  end
end
