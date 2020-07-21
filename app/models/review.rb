require 'pry'
class Review
    attr_reader :customer, :restaurant, :rating 

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer 
        @restaurant = restaurant 
        @rating = rating 
        @@all << self 
    end

    def self.all
        @@all
    end

    def customer 
        #unfinished 
        Review.all.find  {|person| person.customer == customer}
    end

    def restuarant 
        #unfinished
        Review.all.find {|restaurant_reviewed| restaurant_reviewed.restaurant == restaurant}
    end




  
end