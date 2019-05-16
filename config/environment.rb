require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

Leo = Artist.new('Da Vinci', 40)
Van_Gogh = Artist.new('Vincent', 40)
Matisse = Artist.new('Henri', 40)
Louvre = Gallery.new('The Loo', 'Paris')
MFA = Gallery.new('Dirty South Gallery', 'Houston')
painting_one = Leo.create_painting('Mona Lisa', 1000000, Louvre)
painting_two = Leo.create_painting('The Last Supper', 900000, Louvre)
painting_three = Van_Gogh.create_painting('Starry Night', 700000, MFA)
painting_four = Matisse.create_painting('Woman with a Hat', 650000, MFA)

binding.pry