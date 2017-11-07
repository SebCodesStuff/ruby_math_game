class Player
attr_accessor :name, :lives, :your_turn
  def initialize (name, your_turn)
    @name = name
    @lives = 3
    @your_turn = your_turn
  end

  def lose_life
    current_lives = self.lives
    new_lives = current_lives - 1
    self.lives = new_lives
  end
end
