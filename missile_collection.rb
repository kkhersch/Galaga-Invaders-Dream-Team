class MissileCollection
  
  def initialize
    @missiles = []
  end

  def launch_missile_for(ship)
    add(Missile.new(x: ship.nose_location, velocity: [ship.nose_location, -10]))
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&move)
  end

  def draw
    missiles.each(&draw)
  end
end
