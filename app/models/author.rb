
class Author
  attr_reader :name

  def initialize(name)
    @articles = []
    @magazines = []
    if name.is_a?(String)
      @name = name
    else
      puts"Wanted name to be a string"
    end
  end

  def articles
    @articles
  end

  def magazines
    @magazines.uniq
  end

  def add_article(magazine, title)
    if (magazine.is_a?(Magazine) && title.is_a?(String))
    @articles << Article.new(self,magazine,title)
    @magazines << magazine

    else
      puts"Wanted new article instances to be added to the Article array and new magazines to be added to the magazine array"
    end
  end

  def topic_areas
    @magazines.map{|magazine| magazine.category}.uniq
  end
end

