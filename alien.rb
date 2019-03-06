class Alien
  include Drawable

  attr_accessor :position

  def initialize(args)
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
