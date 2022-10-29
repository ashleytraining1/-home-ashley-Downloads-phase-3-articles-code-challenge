class Article 
    attr_reader :title

    @@all = []
    def initialize(author, magazine, title)
            @author = author
            @magazine = magazine
            @title = title
            @@all << self
          
    end

    def self.all
        @@all
    end
end

beyond = Article.new("John Doe", "Vogue", "Beyond")
puts beyond.author
puts beyond.magazine
puts beyond.title
puts Article.all