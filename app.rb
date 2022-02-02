require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "This is personal information!"
end

  get '/random-cat' do
    p @name = ["Amigo", "Misty", "Almond"].sample
    erb (:index)
  end

  get '/cat-form' do
    erb :cat_form 
  end

  post '/named-cat' do
    p params
    @name = params[:name]
    erb :index
  end
