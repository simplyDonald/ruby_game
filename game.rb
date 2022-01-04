require_relative './player'
require_relative './game_wizard'

class Game
  def initialize
    #instance variables => available througout the class
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_players =[@player1, @player2]
  end

# methods


  def end_of_game?
    
    @current_players.select {|player| player.game_over? }.length > 0
  end



  def end_round

    puts "#{@player1.status("P1")} vs #{@player2.status("P2")}"
    puts "------NEW TURN--------"

  

  end

  def play

    until (end_of_game?) do
      current_player = @current_players.first
      @current_players.rotate!
      puts current_player

      puts "Enter a number between 1 and 20"
      num1 = $stdin.gets.chomp
  
      puts "Enter another number between 1 and 20"
      num2 = $stdin.gets.chomp

      puts "#{current_player}: What does #{num1} plus #{num2} equal?"
      answer = $stdin.gets.chomp

      quiz = Wizard.new(num1, num2, answer)
      

      if quiz.result?
        puts "#{current_player}: YES! You are correct"
      
      else
        puts "Seriously? No!"
        current_player.lives -= 1

      end

      if (end_of_game?)
        winner = @player1.lives > 0 ? @player1 : @player2
        puts "#{winner.name} wins with a score of #{winner.lives}/3"
        puts "------GAME OVER--------"
        puts "Good bye!"

        break
      end

      end_round

      sleep 0.7
    end
  end #closing the while
end

