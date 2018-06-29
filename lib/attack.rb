require_relative './player.rb'

class Attack
  def initialize(player)
    @player = player
  end

  # this class method runs and creates a new instance of this object. You could also use Attack.new
  def self.run(player)
    new(player).run
  end

  def run
    @player.receive_damage
  end

end
