require 'sinatra'
require 'sinatra/reloader'
require 'imdb'
require 'pry'

require_relative('lib/movies.rb')

new_search = Movies.new

get "/home" do
	erb :home_page
end 

post "/new_search" do
	@search_array = new_search.search(params[:search_term])
	@trivia_year = new_search.trivia	
	erb :new_search
end