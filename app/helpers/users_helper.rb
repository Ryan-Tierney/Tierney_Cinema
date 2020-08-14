module UsersHelper

    def check_for_age(user)
        statement =
        "You are old enough to see movies with a rating of "
    
        under_thirteen = "Must have Parental Guidance"
        under_seventeen = "PG, and PG13."
        over_seventeen = "PG, PG13 and R."

    
    
         if user.age
           if user.age < 13
            under_thirteen
           elsif user.age < 17
            statement + under_seventeen
           else
            statement + over_seventeen
           end
         end
       end
end
