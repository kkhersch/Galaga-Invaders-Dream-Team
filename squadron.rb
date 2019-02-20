class Squadron

	attr_accessor :pattern, :alien_collection

	def initialize(pattern, alien_collection)
		@pattern = pattern
		@alien_collection = alien_collection
		#TODO decide on ailien type encapsulation
	end

	def execute_movement_pattern
		alien_collection.each do |alien|
			#TODO realize pattern's potential
			alien.move(pattern)
	end

end
