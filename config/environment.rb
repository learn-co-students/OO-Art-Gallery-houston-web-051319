require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

Leo = Artist.new('Da Vinci', 40)
Van_Gogh = Artist.new('Vincent', 40)
Matisse = Artist.new('Henri', 40)
Louvre = Gallery.new('The Loo', 'Paris')
MFA = Gallery.new('Dirty South Gallery', 'Houston')
painting_one = Painting.new('Mona Lisa', 1000000, Leo, Louvre)
painting_two = Painting.new('The Last Supper', 900000, Leo, Louvre)
painting_three = Painting.new('Starry Night', 700000, Van_Gogh, MFA)
painting_four = Painting.new('Woman with a Hat', 650000, Matisse, MFA)

binding.pry