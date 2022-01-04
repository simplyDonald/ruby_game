
class Wizard

  def initialize(num1 , num2 , answer)
    @num1 = num1.to_i
    @num2 = num2.to_i
    @answer = answer.to_i
  end

  def result?
    @num1 + @num2 == @answer
  end

end