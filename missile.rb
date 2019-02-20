class Missile
  attr_accessor :position, :velocity

  def initialize(position, velocity)
    @position = position
    @velocity = velocity
  end

  def move
  	position += velocity
  end

end
