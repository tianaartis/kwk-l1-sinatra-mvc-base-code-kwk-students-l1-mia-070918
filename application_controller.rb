require 'bundler'
Bundler.require
require './models/model'

class MyApp < Sinatra::Base

# get "/" do
#   "Welcome to the coconut coders website"
# end

# get "/video" do
#   "This is page 2"
# end

get "/" do
  erb:index
end

post "/" do
  @name=params[:user]
  @fortune = get_fortune
  return erb :results
end
end