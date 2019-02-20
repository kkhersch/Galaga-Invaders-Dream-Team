class Ship

	attr_accessor :location, :acceleration, :velocity

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
		#TODO "Drag" that slows the ship down constantly
		@acceleration = Vector[2, 0]
		@velocity = Vector[10, 0]
	end

	def moveLeft
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
	end

	def to_s
    "✈️ (#{location})"
  end
end
