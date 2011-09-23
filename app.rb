require 'rubygems'
require 'bundler/setup'
Bundler.require

get '/' do
  redirect to('/pages/welcome')
end

get '/pages/:current_page' do
  Tilt.new("views/#{params[:current_page]}.html.slim").render
end
