class Writer
    def create(prompt)
      puts "Writing a story based on the prompt: #{prompt}"
    end
  end
  class Painter
    def create(theme)
      puts "Painting a masterpiece with the theme: #{theme}"
    end
  end
  def showcase_talent(artists)
    artists.each do |artist|
      if artist.respond_to?(:create)
        artist.create(artist.respond_to?(:prompt) ? artist.prompt : artist.theme)
      else
        puts "#{artist} doesn't have any creative talent!"
      end
    end
  end
  
  writer = Writer.new
  painter = Painter.new
  artists = [writer, painter, "Not an artist"]
  showcase_talent(artists)
  