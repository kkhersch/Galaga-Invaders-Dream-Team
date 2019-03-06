class Alien
  include Drawable

  attr_accessor :location

  def initialize(args)
    @position = args.fetch(:location, default_location)
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
