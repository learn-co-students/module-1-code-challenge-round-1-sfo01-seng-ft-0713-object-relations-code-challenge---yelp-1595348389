class Customer
  attr_accessor :given_name, :family_name

  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    # binding.pry
    reviews = Review.all.select {|review| review.customer == self}.uniq
    reviews.collect {|review| review.restaurant}
  end

  def add_review(restaurant, rating)
    # binding.pry
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    # binding.pry
    eview.all.select {|review| review.customer == self}.count
  end

  def self.find_by_name(name)
    # binding.pry
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    # binding.pry
    self.all.select {|customer| customer.given_name == name}
  end

end
