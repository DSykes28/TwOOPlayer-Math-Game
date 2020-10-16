class Game
  
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end
  
  def current_turn
    if @turn % 2 != 0 
      @player1 
    else  
      @player2
    end
  end
  
  def MathQuestion
    while current_turn.lives > 0
      num1 = rand(1..20)
      num2 = rand(1..20)
      
      puts "#{current_turn.name}: What does #{num1} plus #{num2} equal?"
      result = num1 + num2
      print "> "
      answer = gets.chomp.to_i
  
      if answer == result
        puts "Yes! You are correct."
      else
        puts "Seriously? No!"
        current_turn.lose_a_life
        current_turn.remaining_life
      end
      puts "P1: #{@player1.lives}/3 vs. P2: #{@player2.lives}/3"
      puts "---New Turn---"
      @turn += 1
    end
    if @player1.lives > @player2.lives
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3!"
    else
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3!"
    end
    puts "----Game Over----"
  end
end
