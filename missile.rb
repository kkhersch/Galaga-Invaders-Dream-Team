class Missile
  include Drawable

  attr_accessor :location, :velocity

  def initialize(args)
    @location = args.fetch(:location, default_location)
    @velocity = args.fetch(:velocity, default_velocity)
  end

  def move
  	location += velocity
  end

  def default_location
     Vector.new(0,0)
  end

  def default_velocity
    Vector.new(0,10)
  end

  def sprite_emoji
  	"🚀"
  end

end
