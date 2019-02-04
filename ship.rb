class Ship

	def initialize()
		@location = Vector[screen_width / 2, screen_height - 50]
		#TODO acceleration modifies velocity which modifies position
		@velocity = Vector[10, 0]
	end

	def moveLeft
		@location -= @velocity
	end

	def mmoveRight
		@location += @velocity
	end

	def move

	end

	def fire_missle
	end

	def draw
	end
end
