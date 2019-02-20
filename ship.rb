class Ship

	attr_accessor :location, :velocity

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
		@velocity = Vector[10, 0]
	end

	def moveLeft
		self.location -= velocity
	end

	def mmoveRight
		self.location += velocity
	end

	def move
		# is this necessary?
	end

	def fire_missle
		# this should be moved to missle_collection
	end

	def draw
		puts self
	end

	def to_s
    "✈️ (#{location})"
  end
end
