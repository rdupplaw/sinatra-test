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

get '/cat' do
  '<img style = "border: dashed red;" src = "https://i.imgur.com/jFaSxym.png" />'
end 
