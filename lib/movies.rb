class Movies
	attr_reader :movies
	def initialize
		@movies = []
	end
	def search(params)
		@params = params
		search = Imdb::Search.new(params)
		i=0
		while @movies.length<9
			@movies.push(search.movies[i])
			i = i + 1
		end
		@movies
	end
end



# FARAZ:
# class Movies
# 	def search(params)
# 		search = Imdb::Search.new(params)
# 		movies = search.movies
# 		movies
# 	end
# end