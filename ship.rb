class Ship

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
		#TODO "Drag" that slows the ship down constantly
		@acceleration = Vector[2, 0]
		@velocity = Vector[10, 0]
	end

	def moveLeft
		@velocity -= @acceleration
		@location -= @velocity
	end

	def mmoveRight
		@velocity += @acceleration
		@location += @velocity
	end

	def fireMissle
	end

	def draw
	end
end
