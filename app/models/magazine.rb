
class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def self.all
    @@all
  end


end

vogue = Magazine.new("Vogue", "Beauty")
puts vogue.name = "Elle"
puts vogue.category = "Politics"
puts Magazine.all

