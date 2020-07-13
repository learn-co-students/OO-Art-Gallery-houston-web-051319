class Artist
  @@all = []
  attr_reader :name, :years_experience
  def self.all
    @@all
  end
 
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  def paintings
    Painting.all.select do |painting_objects|
      painting_objects.artist == self
    end
 
  end
  def galleries
    my_artist_paintings = Painting.all.select do | painting_objects  |
      painting_objects.artist == self
    end
    my_artist_paintings.map do | painting_objects |
      painting_objects.gallery
    end
  end
  def cities
    my_artist_paintings = Painting.all.select do | painting_objects |
      painting_objects.artist == self
    end
    my_artist_paintings.map do | painting_objects |
      painting_objects.gallery
    end
  end
  def self.total_experience
    total_years_experience=0
    @@all.each do | artist_object |
      total_years_experience = artist_object.years_experience + total_years_experience
    end
    total_years_experience
  end
 
  def self.most_prolific
    most_prolific_artist = self.all[0]
    best_painting = (most_prolific_artist.paintings.size)/most_prolific_artist.years_experience
    Artist.all.each do | artist_object |
      painting = (artist_object.paintings.size)/artist_object.years_experience
      if best_painting < painting
        most_prolific_artist = artist_object
      end
    end
    most_prolific_artist
  end
 
 
 
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
 
 
 
 end
