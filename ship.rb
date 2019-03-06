class Ship
	include Drawable
	include Locatable

	attr_accessor :location, :velocity

	SHIP_WIDTH = 100
	SHIP_HEIGHT = 100
	SHIP_VELOCITY = 10

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
		@velocity = Vector[10, 0]
	end

	def moveLeft
		location -= velocity
	end

	def mmoveRight
		location += velocity
	end

	def move
		# is this necessary?
	end

	def to_s
    "✈️ (#{location})"
  end
end
