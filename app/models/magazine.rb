
class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    if (name.is_a?(String) && category.is_a?(String))
      @name = name
      @category = category
      @@all << self
    else
      puts "Wanted name and category to be a string"
    end

  end

  def contributors
    articles.map {|article| article.author}
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find{|magazine| magazine.name == name}
  end

  def article_titles
    articles.map {|article| article.title}
  end

  def contributing_authors
    magazine_authors = articles.map {|article| article.author}
    uniq_authors = magazine_authors.uniq
    uniq_authors.filter{|author| magazine_authors.count(author)> 2}
  end

  
  private
  def articles
    Article.all.filter {|article| article.magazine == self}
  end
end


