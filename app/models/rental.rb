class Rental < ApplicationRecord
  
    belongs_to :movie 
    belongs_to :user 

    def rent_movie
        if self.user != nil
          if !old_enough?
            "Sorry, you are not old enough to watch this movie."
          else
            self.update(:available => "checked out",)
            "Thanks for renting #{self.movie.title}!"
          end
        end
      end
    
      def old_enough?
        rental_rating = self.movie.rating
        
        case rental_rating
        when "R"
          required_age = 17
        when "PG-13"
          required_age = 13
        when "PG"
          required_age = 13
        else
          required_age = 0
        end
    
        required_age < self.user.age
      end
    
      def self.checked_out
         self.where("available = 'checked out'")
      end
    
      def self.past_rentals
        self.where("available = 'returned'")
      end
end
