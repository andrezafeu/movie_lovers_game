require 'imdb'

class Movies
	attr_reader :movies, :movies_years
	def initialize
		@movies = []
	end
	def search(params)
		@params = params
		search = Imdb::Search.new(params)
		if search.movies == nil || search.movies.length <= 1
			error = "ERROR!"
			error
		else
			search.movies.each do |mov|
				if mov.poster !=nil && @movies.length <9
					@movies.push(mov)
				end
			end
			@movies
		end

	end

	def trivia
		@movies_years = @movies.map { |movie| movie.year  }
		@movies_years = @movies_years.shuffle
		@movies_years
	end

end