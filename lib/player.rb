class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name, :hp_counter

  def initialize(name)
    @name = name
    @hp_counter = 60
  end

  def hit_points
    @hp_counter = DEFAULT_HIT_POINTS
  end

end
