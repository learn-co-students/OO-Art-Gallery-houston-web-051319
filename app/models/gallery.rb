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
  
  def paintings
    gallery_paintings= Painting.all.select do |paintings|
      paintings.gallery == self
    end
    gallery_paintings= Painting.all.select do |paintings|
      paintings.gallery == self
    end
  end
  def artists
    gallery_paintings= Painting.all.select do |paintings|
      paintings.gallery == self
  end
  gallery_artist=gallery_paintings.map do |painting|
    painting.artist.name

  end
  gallery_artist.uniq
end
def most_expensive_painting
  gallery_paintings= Painting.all.select do |paintings|
    paintings.gallery == self
  end
  gallery_prices=gallery_paintings.map do |painting|
    painting.price
  end
  most_expensive_price = gallery_prices.max
  most_expensive_painting_instance= gallery_paintings.select do |paintings|
    paintings.price == most_expensive_price
  end


end

end
