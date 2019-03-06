class Alien
  include Drawable, Damagable

  attr_accessor :position, :health

  MAX_HEALTH = 1

  def initialize(args)
    @health = MAX_HEALTH
    @position = args.fetch(:position, default_position)
  end

  def move

  end

  def fire_missle

  end

  def default_position
    # Where should this be?
  end

end
