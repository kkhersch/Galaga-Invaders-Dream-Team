class Ship
	include Drawable, Damagable, Locatable

	attr_accessor :location, :velocity, :health

	SHIP_WIDTH = 100
	SHIP_HEIGHT = 100
	SHIP_VELOCITY = 10
	MAX_HEALTH = 1

	def initialize()
		@location = Vector.new(screen_width / 2, screen_height - 50)
		@acceleration = Vector.new(2, 0)
		@health = MAX_HEALTH
		@velocity = Vector.new(10, 0)
		post_initialize(args)
	end

	def post_initialize(args)
		nil
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
