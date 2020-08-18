class Movie < ApplicationRecord
    has_many :rentals 
    has_many :reviews 
    has_many :users, through: :rentals 
    scope :alpha, -> { order(:title) }
    scope :filter_by_search, -> (title) {where("title like ?", "#{title}%")}
    


    def self.rating_filter(rating_param)
        if rating_param == "PG"
            Movie.where("rating = 'PG'")
        elsif rating_param == "PG13"
            Movie.where("rating = 'PG13'")
        elsif rating_param == "R"
            Movie.where("rating = 'R'")
        end 
    end 
 
end
