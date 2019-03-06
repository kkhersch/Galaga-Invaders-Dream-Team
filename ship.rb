class Ship
	include Drawable

	attr_accessor :location, :velocity

	SHIP_WIDTH = 100
	SHIP_HEIGHT = 100
	SHIP_VELOCITY = 10

	def initialize()
<<<<<<< HEAD
		@location = Vector[screen_width / 2, screen_height - 50]
		@velocity = SHIP_VELOCITY
=======
		location = Vector[screen_width / 2, screen_height - 50]
		velocity = Vector[10, 0]
>>>>>>> 28_Draw_Module
	end

	def moveLeft
		location -= velocity
	end

<<<<<<< HEAD
	def moveRight
		self.location += velocity
=======
	def mmoveRight
		location += velocity
>>>>>>> 28_Draw_Module
	end

	def move
		# is this necessary?
	end

	def nose_location
		
	end

	def to_s
    "✈️ (#{location})"
  end
end
