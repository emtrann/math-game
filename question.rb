class Question
  attr_reader :answer, :question_asked
  
  def initialize
    first_num = rand(1...50)
    second_num = rand(1...50)
    @answer = first_num + second_num
    @question_asked = "What does #{first_num} plus #{second_num} equal?"
  end

end