require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

sophie = Author.new("Sophie")
puts sophie.name

vogue = Magazine.new("Vogue", "Beauty")
puts vogue.name = "Elle"
puts vogue.category = "Politics"
puts Magazine.all






### DO NOT REMOVE THIS
binding.pry

0
