require 'pry'
class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants 
    Customer.all.uniq {|customers_who_reviewed| customers_who_reviewed.fullname == full_name}
  end

  def add_review(restaurant, rating)
    
  end

  
end
