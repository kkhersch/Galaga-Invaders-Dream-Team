class GameClock
  attr_accessor :current_time

  def initialize()
    @current_time = 0
  end

  def tick
    @current_time += 1
  end

  def get_time
    current_time
  end

  def time_for_fly_in
    
  end

  def time_for_mothership

  end

  def time_for_attack

  end

  def reset_game_clock
    self.current_time = 0
  end

end
