class Missile
  include Drawable

  attr_accessor :location, :velocity

  def initialize(args)
    @position = args.fetch(:location, Vector[0,0])
    @velocity = args.fetch(:velocity, Vector[0,10])
  end

  def move
  	location += velocity
  end

  def sprite_emoji
  	"🚀"
  end

end
