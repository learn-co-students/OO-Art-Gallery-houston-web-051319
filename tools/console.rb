require_relative '../config/environment.rb'


picasso = Artist.new("Picasso", 30)
gaido = Artist.new("Gaido", 10)
stefan = Artist.new("Stefan", 15)
hans = Artist.new("hans", 40)

luvre = Gallery.new("Luvre", "Paris")
texas = Gallery.new("Texas", "Dallas")
nyu = Gallery.new("NYU", "New York")

mona_lisa = Painting.new("Mona Lisa", 100, picasso, luvre)
scream = Painting.new("scream", 40, hans, luvre)
mon = Painting.new("Mon", 10, gaido, luvre)
mona = Painting.new("Mona", 1000, stefan, nyu)
lis = Painting.new("Lis", 100, hans, texas)
lisa = Painting.new("Lisa", 200, picasso, texas)

binding.pry

puts "Bob Ross rules."
