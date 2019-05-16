require_relative '../config/environment.rb'

me = Artist.new("Feven", 5)
stefan = Artist.new("Stefan", 1)
raul = Artist.new("Raul", 4)

houston = Gallery.new("Flatiron", "Houston")
austin = Gallery.new("UT", "Austin")

new_painting = Painting.new("Trees", 10, me, houston)
new_painting2 = Painting.new("Suns", 2, me, houston)
new_painting3 = Painting.new("Buildings", 5, stefan, austin)
new_painting4 = Painting.new("Pillars", 20, stefan, austin)







binding.pry

puts "Bob Ross rules."
