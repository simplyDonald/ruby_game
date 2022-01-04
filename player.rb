class Player

  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
    
  end


  def status
    "#{self.name}: #{self.lives}/3"
  end

  def game_over?
    self.lives == 0
  end



end 