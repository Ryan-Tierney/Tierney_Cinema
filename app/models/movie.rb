class Movie < ApplicationRecord
    has_many :rentals 
    has_many :reviews 
    has_many :users, through: :rentals 

    def self.rating_filter(rating_param)
        if rating_param == "PG"
            Movie.where("rating = 'PG'")
        elsif rating_param == "PG13"
            Movie.where("rating = 'PG13'")
        elsif rating_param == "R"
            Movie.where("rating = 'R'")
        end 
    end 

    def self.title_filter(title_param)
        if title_param == "A"
            Movie.where("title.starts_with? = 'A'")
        end 
    end 
end
