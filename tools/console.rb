require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Wes", "Williams")
customer2 = Customer.new("Birdy", "Jacobs")
customer3 = Customer.new("Yuna", "Buchanan")
customer4 = Customer.new("Cal", "Johnson")
customer5 = Customer.new("Elisa", "Johnson")
customer6 = Customer.new("Elisa", "Wiebs")

restaurant1 = Restaurant.new("Serpentine")
restaurant2 = Restaurant.new("Bobs")
restaurant3 = Restaurant.new("Foreign Cinema")
restaurant4 = Restaurant.new("Padrecito")

review1 = Review.new(customer1, restaurant2, 5)
review2 = Review.new(customer2, restaurant4, 8)
review3 = Review.new(customer3, restaurant1, 6)
review4 = Review.new(customer4, restaurant3, 10)
review5 = Review.new(customer2, restaurant2, 5)
review6 = Review.new(customer1, restaurant2, 5)
review7 = Review.new(customer2, restaurant4, 5)
review8 = Review.new(customer4, restaurant4, 5)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line