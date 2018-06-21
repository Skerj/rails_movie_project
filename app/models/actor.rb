class Actor < ApplicationRecord
	has_many :comments
	has_many :actor_movies
	has_many :movies, through: :actor_movies
	validates :name, presence: true
	validates :age, presence: true

	def self.oldest_actors
		self.order(:age).last(3)
	end

	def self.youngest_actors
		self.order(:age).first(3)
	end
end
