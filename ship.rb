class Ship

	attr_accessor :location, :velocity

	SHIP_WIDTH = 100
	SHIP_HEIGHT = 100
	SHIP_VELOCITY = 10

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
		@velocity = SHIP_VELOCITY
	end

	def moveLeft
		self.location -= velocity
	end

	def moveRight
		self.location += velocity
	end

	def move

	end

	def nose_location
		
	end

	def draw
		puts self
	end

	def to_s
    "✈️ (#{location})"
  end
end
