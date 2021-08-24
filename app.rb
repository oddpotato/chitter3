require "sinatra"
require "sinatra/base"
require 'sinatra/activerecord'
require "sinatra/reloader" if development?
require 'sinatra/flash'

class Chitter < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World'
  end 

  run! if app_file == $0
end
