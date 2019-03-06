class Missile
  include Drawable

  attr_accessor :position, :velocity

  def initialize(args)
    @position = args.fetch(:position, Vector[0,0])
    @velocity = args.fetch(:velocity, Vector[0,10])
  end

  def move
  	position += velocity
  end

  def to_s
  	"🚀 (#{position})"
  end

end
