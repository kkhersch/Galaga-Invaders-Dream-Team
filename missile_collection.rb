class MissileCollection
  attr_accessor :missiles

  def initialize
    @missiles = []
  end

  def launch_missile_from(ship)
    add(Missile.new(location: ship.nose_location, velocity: ship.velocity))
  end

  def add(missile)
    missiles << missile
  end

  def update_position
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end
end
