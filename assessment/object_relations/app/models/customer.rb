class Customer

  attr_accessor :name, :reviews

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.find_by_name(name)
    @@all.find {|customer| customer.name == name}
  end

  def add_review(comments, restaurant)
    review = Review.new(comments, restaurant, self)
    @reviews << review
  end

end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied to the restaurant, and tied to the customer
