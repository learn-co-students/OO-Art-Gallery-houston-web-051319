
class Artist

  attr_reader :name, :years_experience

  @@all=[]

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self

  end

  def self.all
    @@all
  end

  def paintings
      artist_paintings= Painting.all.select do |paintings|
        paintings.artist == self
      end
      artist_paintings.map do |painting|
        painting
      end
    end
      
  def galleries
      artist_paintings= Painting.all.select do |paintings|
        paintings.artist == self
      end
      artist_paintings.map do |painting|
        painting.gallery.name
      end
    end

    def cities
      artist_paintings= Painting.all.select do |paintings|
        paintings.artist == self
      end
      unique_city = artist_paintings.map do |painting|
        painting.gallery.city
      end
      unique_city.uniq
    end

    def self.total_experience
      Artist.all.sum(&:years_experience)
    end

    def count_paintings
      artist_paintings= Painting.all.select do |paintings|
        paintings.artist == self
      end
        number_of_paintings = artist_paintings.map do |painting|
          painting.title
        end
        number_of_paintings.length 
      end

    def most_prolific
        
    end

    def create_painting(title, price, gallery)
      Painting.new(title, price, self, gallery)
    end


end