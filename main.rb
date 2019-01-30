#main.#!/usr/bin/env ruby -wKU

class GalagaInvaders

  def initialize
    @caption = "Galaga Invaders"
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

end

GalagaInvaders.new.show
