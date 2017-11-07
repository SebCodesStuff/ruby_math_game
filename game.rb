require './player'
require './question'

class Game
# May want to get ride of game_over
attr_accessor :game_over, :turn_num, :player1, :player2

  def initialize player1, turn1, player2, turn2
    @player1 = Player.new player1, turn1
    @player2 = Player.new player2, turn2
    @game_over = false
    @turn_num = 0
  end


  def run_game
    puts 'Game started'
    while @game_over === false do
    puts "----- NEW TURN -----"

    if self.player1.your_turn == true
      player_turn = self.player1
      player_notTurn = self.player2
    else
      player_turn = self.player2
      player_notTurn = self.player1
    end
    
    puts "#{player_notTurn.name} enter two numbers"
    question = Question.new STDIN.gets.chomp.to_i, STDIN.gets.chomp.to_i
    puts "Now #{player_turn.name} answer the following"

    player_turn.your_turn = false
    player_notTurn.your_turn = true

    if question.eval_answer === false
      player_turn.lose_life
      puts player_turn.lives
      if player_turn.lives === 0
        puts "----- GAME OVER -----"
        puts "That's #{player_turn.name}'s last life. #{player_notTurn.name} is the winner!"
        @game_over = true
      end
    end
  end
end









end
