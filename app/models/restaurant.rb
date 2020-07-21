class Restaurant
  attr_reader :name
  

  def initialize(name)
    @name = name
  end

  def reviews
    #broken 
    Review.all.find {|reviews_for_a_restaurant| reviews_for_a_restaurant.reviews == reviews}
  end

  def customers
    #broken
    Customer.all.uniq {|customers_who_reviewed| customers_who_reviewed.customers == customers}
  end
  

end
