class Comment < ApplicationRecord
	belongs_to :movie
	belongs_to :actor
	belongs_to :user
end
