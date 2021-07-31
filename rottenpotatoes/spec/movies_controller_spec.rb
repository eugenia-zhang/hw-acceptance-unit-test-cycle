require 'rails_helper'
require 'factories/movies'

# describe MoviesController do
#   describe 'failing to find a director' do
#     it 'redirects to home page if no match' do
#       fake_movie = instance_double('Movie', :others_by_same_director => )
#       expect(fake_movie).to receive(:others_by_same_director).and_return( [] ) 
#       post 'same_director/1'
#       expect(response).to redirect_to("/movie")
#     end
#   end
# end

# describe MoviesController do
#   describe 'find movies with same director' do
#     it 'shows movies with the same director' do
#       fake_movie = double('Movie', :director => 'someone')
#       # fake_movie_2 = double('Movie')
#       # allow(fake_movie).to receive(:director).and_return('')

#       # allow(fake_movie).to receive(:others_by_same_director).and_return([])

#       # expect(fake_movie).to receive(:others_by_same_director).and_return( [] ) 
#       # post 'same_director/1'
#       # expect(response).to redirect_to("/movie")
#     end
#   end
# end

describe MoviesController do
  describe 'check if movie has director' do
    it 'should include director' do
      movie = FactoryBot.build(:movie)
      expect(movie.director).to eq('Some Person')
    end
  end
end

describe MoviesController do
  describe 'find movies with same director' do
    it 'should include director' do
      movie = FactoryBot.build(:movie, :director => "Person 1")
      movie_2 = FactoryBot.build(:movie, :director => "Person 1")
      allow(movie).to receive(:others_by_same_director).and_return([movie,movie_2])
      get 'same_director/1'
    end
  end
end





