class Alien
  include Drawable

  attr_accessor :location

  def initialize(args)
<<<<<<< HEAD
    @position = args.fetch(:location, default_location)
=======
    @health = MAX_HEALTH
    @position = args.fetch(:position, default_position)
>>>>>>> 69f91e5d6a9ad72884d8655d773851ffeaec15c7
  end

  def move

  end

  def fire_missle

  end

  def default_location
    # Where should this be?
  end

  def sprite_emoji
    "👽"
  end

end
