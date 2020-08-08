class User < ApplicationRecord
    has_secure_password
    has_many :rentals
    has_many :movies, through: :rentals 
    has_many :reviews 
    validates_presence_of :username 
    validates_uniqueness_of :username 

end
