
class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end


end

sophie = Author.new("Sophie")
puts sophie.name