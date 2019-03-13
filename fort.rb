# fort.rb
class Fort
  include Drawable, Damagable

  attr_accessor :location, :color, :health

  MAX_HEALTH = 100

  def initialize(args)
    @location = args.fetch(:location)
    @color = 'red'
    @health = MAX_HEALTH
    #TODO are there more things that make up a fort?
  end

  def sprite_emoji
    "🏰"
  end
end
