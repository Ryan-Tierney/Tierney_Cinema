module UsersHelper

    def check_for_age(user)
        statement = "According the the Motion Picture Association of America (MPAA),
        you are old enough to see movies with a rating of "
    
        under_thirteen = "You are not old enough to watch"
        under_seventeen = "PG, and PG13."
        over_seventeen = "PG, PG13 and R."

    
    
         if user.age
           if user.age < 13
            statement + under_thirteen
           elsif customer.age < 17
            statement + under_seventeen
           else
            statement + over_seventeen
           end
         end
       end
end
