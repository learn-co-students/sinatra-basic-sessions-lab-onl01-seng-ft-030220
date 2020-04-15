require_relative 'config/environment'
require 'sysrandom/securerandom'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :sessions_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :item
  end
end