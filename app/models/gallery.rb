class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
   @@all
  end

  def painting
    Painting.all.select do |painting_object|
      painting_object.gallery == self
    end
  end

  def artist_name
    artist_paintings_gallery = Painting.all.select do | painting_object |
      painting_object.gallery == self
    end
    artist_paintings_gallery.map do | painting_object |
      painting_object.artist
    end
  end

  def most_expensive_painting
    artist_painting_gallery = Painting.all.select do | painting_object |
      painting_object.gallery == self
    end
    max_object = artist_painting_gallery[0]
    max_object_price = artist_painting_gallery[0].price
    artist_painting_gallery.each do | painting_object |
      if painting_object.price > max_object_price
        max_object_price = painting_object.price
        max_object = painting_object
      end
    end
    max_object
  end
end
hghghjghgjh