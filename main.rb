#main.#!/usr/bin/env ruby -wKU

require_relative 'ship'
require_relative 'fort'
require_relative 'event_timer'
require_relative 'squadron'

class GalagaInvaders
  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
    @forts = { left: Fort.new, middle_left: Fort.new, middle_right: Fort.new, right: Fort.new }
    @timer = TimeKeeper.new
  end

  def update
    timer.tick
    ship.update_position
    alien.update_position
    missile.update_position
    forts.each do { |fort| fort.update_health }
  end

  def draw
    @ship.draw
  end

  def show
    while(true) do
      update
      draw
    end
  end

  def key_pressed(key)
    if key == 'a'
      @ship.move_left
    end
    if key == 'd'
      @ship.move_right
    end
    if key == ' '
      @ship.fire_missle
    end
  end
end

GalagaInvaders.new.show
