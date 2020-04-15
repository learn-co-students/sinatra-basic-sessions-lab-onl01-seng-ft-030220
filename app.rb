require_relative 'config/environment'

class App < Sinatra::Base

    configure do

        enable :sessions
        set :session_secret, "secret" #:l^L01(!;*P?VQ/>tWxt6h:FU@>K^&"

    end

    get '/' do

        @session = session
    
        erb :'index'
    end

    post '/checkout' do
        @item = params[:item]
        session["item"] = @item
    
        erb :'checkout'
    end
end