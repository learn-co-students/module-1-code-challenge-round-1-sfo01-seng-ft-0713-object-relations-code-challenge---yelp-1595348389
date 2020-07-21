class Restaurant
  attr_reader :name

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    # binding.pry
    review = Review.all.select {|review| review.restaurant == self}
    review.collect {|review| review.rating}
  end

  def customers
    # binding.pry
    reviews = Review.all.select {|review| review.restaurant == self}
    reviews.collect {|review| review.customer}
  end

  def average_star_rating
    # binding.pry
    reviews = Review.all.select {|review| review.restaurant == self}
    reviews.sum {|review| review.rating} / reviews.count
  end

end
