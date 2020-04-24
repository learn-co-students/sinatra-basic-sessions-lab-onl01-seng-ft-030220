require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        @session = session
        erb :index
    end

    configure do
        enable :sessions
        set :session_secret, "boo"
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end
end