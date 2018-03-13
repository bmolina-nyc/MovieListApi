class MovieList < ApplicationRecord
  self.primary_key = 'imdbID'

  enum status: {
    movies_to_watch: 0,
    likes: 1,
    dislikes: 2,
    recommended: 3
  }


  belongs_to :user
end
