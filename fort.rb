# fort.rb

class Fort

  attr_accessor :location, :color, :health

  MAX_HEALTH = 100

  def initialize()
    @location = args.fetch(:location)
    @color = 'red'
    @health = MAX_HEALTH
    #TODO are there more things that make up a fort?
  end

  def to_s
    "🏰 (#{location})"
  end
end
