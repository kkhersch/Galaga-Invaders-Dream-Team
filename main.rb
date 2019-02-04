#main.#!/usr/bin/env ruby -wKU

require_relative 'ship'
require_relative 'fort'

class GalagaInvaders
  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
    @forts = { left: Fort.new, middle_left: Fort.new, middle_right: Fort.new, right: Fort.new }
  end

  def update
    Ship.update_position
    Alien.update_position
    Missile.update_position
    Forts.each do { |fort| fort.update_health }
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
