require_relative './player'

class Game

# constructor
  def initialize(location)
    #instance variables => available througout the class
    @player1 = Player.new("LeBron")
    @player2 = Player.new("Durant")
    @players =[@player1, @player2].shuffle
    @location = location
    @round = 1
  end

# methods


  def end_of_game?
    # @player1.score >= 11 || @player2.score >= 11
    @players.select {|player| player.game_over? }.length > 0
  end



  def end_round

    puts "---------------"
    puts "    Scoreboard"
    puts "---------------"

    @players.each {|player| puts player.player_status}


    @round += 1

  end

  def play

    puts "let's start the game!"
    # puts @player1.inspect
    # puts @player2.inspect


    until (end_of_game?) do
      @players.rotate!
      attack_player = @players.first

      puts "---------------"
      puts "    Round##{@round}"
      puts "---------------"

      attack_player.shoots

      end_round

      sleep 0.7
    end
  end #closing the while
end

game1 = Game.new("Montreal")

game1.play 