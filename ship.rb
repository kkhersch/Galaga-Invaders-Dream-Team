class Ship
	include Drawable, Damagable, Locatable

	attr_accessor :location, :velocity, :health

	SHIP_WIDTH = 100
	SHIP_HEIGHT = 100
	SHIP_VELOCITY = 10
	MAX_HEALTH = 1

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
		@acceleration = Vector[2, 0]
		@health = MAX_HEALTH
		@velocity = Vector[10, 0]
	end

	def moveLeft
		location -= velocity
	end

	def moveRight
		location += velocity
	end

	def move
		# is this necessary?
	end

	def sprite_emoji
    "✈️"
  end
end
