require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers 
darius = Customer.new("Darius Walker", "Walker")
brutus = Customer.new("Brutus Buckeye", "Buckeye")
rufus = Customer.new("Rufus Bobcat", "Bobcat")

#restuarants 
bob_evens = Restaurant.new("Bob Evens")
mcdonalds = Restaurant.new("McDonalds")
wendys = Restaurant.new("Wendys")

#reviews 
review_1 = Review.new(rufus, bob_evens, 5)
review_2 = Review.new(brutus, mcdonalds, 4)
review_3 = Review.new(darius, wendys, 3)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line