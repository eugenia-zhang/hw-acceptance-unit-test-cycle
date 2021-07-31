class Movie < ActiveRecord::Base
	#added:
	def others_by_same_director()
		# Movie.find_all_by_director(director)
		Movie.where("director = \"#{director}\"")
	end
end
