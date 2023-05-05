class Question

  attr_accessor :number1, :number2, :answer

  def initialize()
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = self.number1 + self.number2
  end

  def question
    puts "What is #{self.number1} + #{self.number2}?"    
    print "> "
    self.answer == gets.chomp.to_i
  end
end

# a = Question.new
# b = a.number1 + a.number2
# puts a.number1
# puts a.number2
# puts a.answer
# if a.question 
#   puts "correct"
# elsif
#   puts"wrong"
# end
