class Player
  attr_accessor :name, :lives

  def initialize (player)
    self.name = player
    self.lives = 3
  end

  def remaining_life
    puts "you have #{self.lives} lives remaining"
  end

  def lose_a_life
    @lives -= 1
  end
end