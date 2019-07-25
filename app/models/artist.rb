
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

  def years_experience
    @years_experience
  end
  
  def paintings
      Painting.all.select do |paintings|
        paintings.artist == self
      end
    end
      
  def galleries
      artist_paintings= Painting.all.select do |paintings|
        paintings.artist == self
      end
      unique_galleries = artist_paintings.map do |painting|
        painting.gallery.name
      end
      unique_galleries.uniq
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
       number_of_paintings = Painting.all.select do |paintings|
        paintings.artist == self
      end
        number_of_paintings.length
    end

    def self.most_prolific
        most_prolific_artist = 0
           Artist.all.each do |artist|
            x = artist.paintings.length / artist.years_experience
            if x > most_prolific_artist
            most_prolific_artist = x 
          else
            most_prolific_artist
          end
        end
        Artist.all.select do |artist|
          artist.paintings.length / artist.years_experience == most_prolific_artist
        end
    end

    def create_painting(title, price, gallery)
      Painting.new(title, price, self, gallery)
    end


end