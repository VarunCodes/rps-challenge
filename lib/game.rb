class Game
  attr_reader :name, :choices

  def initialize(name)
    @name = name
    @choices = [:rock, :paper, :scissors]
  end

  def ai_choice
    @ai_choice = [:rock, :paper, :scissors].sample
  end

end
