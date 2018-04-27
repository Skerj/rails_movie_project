class Movie < ApplicationRecord
	has_many :actors, through: :actor_movies
end
