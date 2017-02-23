class Restaurant

    @@all = []

    attr_accessor :name, :reviews

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end

  def add_review(review)
    self.reviews << review
  end

  def self.clear
    @@all.clear
  end

  def customers
    self.reviews.map{|review| review.customer}
  end

end
