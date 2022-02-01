require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "This is personal information!"
end

  get '/cat' do
    erb(:index)
  end
