require './game'
require './player'
require './question'


g1 = Game.new('Seb', true, 'Jon', false)
g1.run_game


# Pseudo Code for evaluating the answer and moving forward
# correct = q1.eval_answer
# players[ind].score = (correct ? whatever : )
# ind = (ind + 1) % players.size
