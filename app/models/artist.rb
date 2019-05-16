class Artist

  attr_reader :name, :years_experience, :all

    @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select do | painting |
      painting.artist == self
    end
  end

  def galleries
    Gallery.all.select do | gallery |
      gallery.artist == self
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end.uniq
  end

  def self.total_experience
    self.all.inject(0) { |sum,artist| sum+artist.years_experience }
  end

  def self.most_prolific
    most_prolific_artist = self.all[0]
    best_paintings_per_year = (most_prolific_artist.paintings.length) / (most_prolific_artist.years_experience)
    Artist.all.each do | artist |
      paintings_per_year = (artist.paintings.length) / (artist.years_experience)
      if best_paintings_per_year < paintings_per_year
        most_prolific_artist = artist
      end
    end
    most_prolific_artist
  end

  def create_painting(title,price,gallery)
    title = Painting.new(title,price,self,gallery)
  end

end
