class Player

  attr_reader :name, :hp, :DEFAULT_HIT_POINTS

  DEFAULT_HIT_POINTS = 100

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def take_damage
    @hp -= 10
  end

end