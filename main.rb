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
    #TODO draw the state of the world
  end

  def show
    while(true) do
      update
      draw
    end
  end

  def key_pressed(key)
    if key == 'a'
      @ship.moveLeft
    end
    if key == 'd'
      @ship.moveRight
    end
    if key == ' '
      @ship.fireMissle
    end
  end

end

GalagaInvaders.new.show
