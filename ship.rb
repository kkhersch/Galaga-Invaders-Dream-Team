class Ship
<<<<<<< HEAD
	include Drawable

	attr_accessor :location, :velocity

	SHIP_WIDTH = 100
	SHIP_HEIGHT = 100
	SHIP_VELOCITY = 10

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
=======

	attr_accessor :location, :acceleration, :velocity

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
		#TODO "Drag" that slows the ship down constantly
		@acceleration = Vector[2, 0]
>>>>>>> 03_forts
		@velocity = Vector[10, 0]
	end

	def moveLeft
<<<<<<< HEAD
		location -= velocity
	end

	def mmoveRight
		location += velocity
	end

	def move
		# is this necessary?
	end

	def nose_location

=======
		self.velocity -= acceleration
		self.location -= velocity
	end

	def mmoveRight
		self.velocity += acceleration
		self.location += velocity
	end

	def move

	end

	def fire_missle
	end

	def draw
		puts self
>>>>>>> 03_forts
	end

	def to_s
    "✈️ (#{location})"
  end
end
