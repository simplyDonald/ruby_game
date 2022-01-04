class Player

  attr_reader :name
  attr_accessor :score, :nb_shots

  def initialize(name)
    # this is private
    @name = name
    @lives = 3
    
  end

  def shoots
    puts "#{self.name} shoots"
    self.nb_shots += 1

    points = rand(0..2)
    self.score += points

    puts "#{self.name} has scored #{self.score} points! and has made #{self.nb_shots} shots!"
  end

  def player_status
    puts "Player: #{self.name} Score: #{self.score} Nb of shoots: #{self.nb_shots}"
  end

  def game_over?
   self.score >= 21
  end




  #getter
  # def name
  #   @name
  # end

  # def score
  #   @score
  # end
  # #setter
  # def score=(points)
  #   @score = points
  # end
end 