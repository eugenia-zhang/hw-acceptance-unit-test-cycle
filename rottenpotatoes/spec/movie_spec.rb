require 'rails_helper'

# RSpec.describe Movie, "#others_by_same_director" do
# 	context "with director "
# end

RSpec.describe Movie, "#return_one" do
	context "no context" do
		it "returns 1" do
			movie = Movie.new
			expect(movie.return_one).to eq 1
		end		
	end
end