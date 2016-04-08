require 'imdb'

class Movies
	attr_reader :movies, :movies_years
	def initialize
		@movies = []
	end
	def search(params)
		@params = params
		search = Imdb::Search.new(params)
		# if search.movies.class == "array"

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

		# if search.movies.length > 1
		# 	search.movies.each do |mov|
		# 		if mov.poster != nil && @movies.length < 9
		# 			@movies.push(mov)
		# 		end
		# 	end
		# end

		# if @movies.length < 2
		# 	error = "ERROR!"
		# 	error
		# else
		# end

	end

	def trivia
		@movies_years = @movies.map { |movie| movie.year  }
		@movies_years = @movies_years.shuffle
		@movies_years
	end

end

# class Movies
# 	attr_reader :movies
# 	def initialize
# 		@movies = []
# 	end
# 	def search(params)
# 		@params = params
# 		@temp_movies = []
# 		search = Imdb::Search.new(params)
# 		i=0
# 		while @temp_movies.length<15
# 			@temp_movies.push(search.movies[i])
# 			i = i + 1
# 		end
# 		temp_movies.each do |movie|

# 		@movies
# 	end
# end



# avi:
# movies_array = searchmovies
# Movies[0..20].each do |movie|
# 	Poster = movie.Poster
# 	if Poster
# 		store
# 	end


#First iteration code
# class Movies
# 	attr_reader :movies
# 	def initialize
# 		@movies = []
# 	end
# 	def search(params)
# 		@params = params
# 		search = Imdb::Search.new(params)
# 		i=0
# 		while @movies.length<9
# 			@movies.push(search.movies[i])
# 			i = i + 1
# 		end
# 		@movies
# 	end
# end




# FARAZ:
# class Movies
# 	def search(params)
# 		search = Imdb::Search.new(params)
# 		movies = search.movies
# 		movies
# 	end
# end