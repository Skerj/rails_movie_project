class Movie < ApplicationRecord
	has_many :actor_movies
	has_many :actors, through: :actor_movies
	accepts_nested_attributes_for :actors

	def actors_attributes=(actor_attributes)
		actor_attributes.values.each do |actor_attribute|
			actor = Actor.find_or_create_by(actor_attribute)
			self.actors << actor
		end
	end
end
