class Game
  attr_reader :name, :choices

  def initialize(name)
    @name = name
    @choices = [:rock, :paper, :scissors]
  end

end
