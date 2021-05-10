require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'Hello'
end

get '/secret' do
  'this is a secret page'
end

get '/test' do
  'this is a test page'
end

get '/about' do
  'this is an about page'
end

get '/random-cat' do
  @random_cat_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end 

get '/named-cat' do
  p params
  @random_cat_name = params[:name]
  @random_cat_age = params[:age]
  erb(:index)
end 
