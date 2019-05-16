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
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    self.paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    self.paintings.map do |painting|
      painting.artist.name
    end
  end

  def most_expensive_painting
    most_expensive_painting = self.paintings[0]
    highest_price = most_expensive_painting.price
    self.paintings.each do |painting|
      current_price = painting.price
      if current_price > highest_price
        most_expensive_painting = painting
      end
    end
    most_expensive_painting
  end

end
