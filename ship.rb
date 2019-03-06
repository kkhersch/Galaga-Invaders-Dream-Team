class Ship
<<<<<<< HEAD
	include Drawable, Damagable
=======
	include Drawable
	include Locatable
>>>>>>> 82402dfb274f1d647332d4914ad8d6db44006168

	attr_accessor :location, :velocity, :health

	SHIP_WIDTH = 100
	SHIP_HEIGHT = 100
	SHIP_VELOCITY = 10
	MAX_HEALTH = 1

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
<<<<<<< HEAD
		@velocity = SHIP_VELOCITY
=======
		@health = MAX_HEALTH
		location = Vector[screen_width / 2, screen_height - 50]
		velocity = Vector[10, 0]
>>>>>>> 28_Draw_Module
=======
		@velocity = Vector[10, 0]
>>>>>>> 82402dfb274f1d647332d4914ad8d6db44006168
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
