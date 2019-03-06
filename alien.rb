class Alien
  include Drawable, Damagable

  attr_accessor :position, :health

  MAX_HEALTH = 1

  def initialize(args)
<<<<<<< HEAD
    @health = MAX_HEALTH
    position = args.fetch(:position, default_position)
=======
    @position = args.fetch(:position, default_position)
>>>>>>> 82402dfb274f1d647332d4914ad8d6db44006168
  end

  def move

  end

  def fire_missle

  end

  def default_position
    # Where should this be?
  end

end
