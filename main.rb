#main.#!/usr/bin/env ruby -wKU

require_relative 'ship'
require_relative 'fort'
require_relative 'event_timer'
require_relative 'squadron'
require_relative 'missile_collection'
require_relative 'alien'

class GalagaInvaders

  attr_accessor :caption, :ship, :forts, :gameclock, :missiles, :armada, :mothership, :queen_bee, :the_group_of_things_that_can_be_drawn_and_updated

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
    @forts = { left: Fort.new, middle_left: Fort.new, middle_right: Fort.new, right: Fort.new }
    @gameclock = GameClock.new
    @missiles = MissileCollection.new
    @armada = []
    @mothership = Mothership.new
    @queen_bee = QueenBee.new
    #fix meeeeee~ killll meeeee~
    @the_group_of_things_that_can_be_drawn_and_updated = []
  end

  def update
    gameclock.tick
    if gameclock.time_for_squadron_spawn
      squadron = Squadron.new
      squadron.fly_in
    end

    squadron.update_position if squadron.on_flight_path
    armada.add(squadron) if squadron.flight_path_complete?

    mothership.spawn if gameclock.time_for_mothership
    queen_bee.spawn if gameclock.time_for_queen_bee

    queen_bee.tractor_beam_attack if gameclock.time_for_queen_attack
    ship.upgrade if (queen_bee.has_player_ship? && queen_bee.is_destroyed?)

    armada.start_attack_sequence if gameclock.end_time_for_squadron_spawn

    mothership.update_position if mothership.exists?
    queen_bee.update_position if queen_bee.exists?
    armada.update_position
    missiles.update_position
    forts.foreach do &:update_health

    #do ya want ants?
    #the_group_of_things_that_can_be_drawn_and_updated.foreach do &:update_position
  end

  def draw
    the_group_of_things_that_can_be_drawn_and_updated.foreach do &:draw
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
