
class Painting

  attr_reader :title, :price, :artist, :gallery
  attr_accessor :cities
  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end 
  def self.all
    @@all
  end

  def self.total_price
    price_total=0
    @@all.each do | artist_object |
      price_total+=artist_object.price
    end
    price_total
  end


end



