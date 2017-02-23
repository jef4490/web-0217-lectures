class Review

  attr_accessor :customer, :restaurant, :comments

  @@all = []

  def initialize(comments, restaurant, customer)
    @comments = comments
    @customer = customer
    @restaurant = restaurant
    # customer.add_review(self)
    restaurant.add_review(self)
    @@all << self
  end

  def self.all
    @@all
  end


end
