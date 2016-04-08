require 'sinatra'
require 'sinatra/reloader'

require_relative('lib/movies.rb')

get "/home" do
	erb :home_page
end 