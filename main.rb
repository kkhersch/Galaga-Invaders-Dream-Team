#main.#!/usr/bin/env ruby -wKU

require_relative 'ship'
require_relative 'fort'
require_relative 'event_timer'
require_relative 'squadron'
require_relative 'missile_collection'

class GalagaInvaders

  attr_accessor :caption, :ship, :forts, :gameclock, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
    @forts = { left: Fort.new, middle_left: Fort.new, middle_right: Fort.new, right: Fort.new }
    @gameclock = GameClock.new
    @missiles = MissileCollection.new
  end

  def update
    gameclock.tick
    ship.update_position
    alien.update_position
    missiles.update_position
  end

  def draw
    ship.draw
    missiles.draw
  end

  def show
    while(true) do
      update
      draw
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    end
    if key == 'd'
      ship.move_right
    end
    if key == ' '
      missiles.launch_missile_from(ship)
    end
  end
end

GalagaInvaders.new.show
