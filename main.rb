require './players'
require './game'


p1 = Player.new('Player1')
p2 = Player.new('Player2')

play_game = Game.new(p1, p2)

play_game.MathQuestion