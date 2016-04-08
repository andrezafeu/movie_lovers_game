require_relative("../lib/movies.rb")

RSpec.describe "Movie Lovers" do

	before :each do
			@movie = Movies.new
	end

	it "Check if movie has a poster" do
		nine_movies = @movie.search("starwars")
		nine_movies.each do |movie|
			expect(movie.poster).not_to eq(nil)
		end
	end

end