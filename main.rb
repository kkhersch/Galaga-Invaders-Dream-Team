#main.#!/usr/bin/env ruby -wKU

require_relative 'ship'

class GalagaInvaders

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
  end

  def update
    #TODO update state of world
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
