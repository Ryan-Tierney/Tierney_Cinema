class Review < ApplicationRecord
    belongs_to :user 
    belongs_to :movie 
    validates_presence_of :title
    validates_presence_of :content
    validates :movie_id, uniqueness: { scope: :user_id, message: "You've already reviewed this movie!" }
end
