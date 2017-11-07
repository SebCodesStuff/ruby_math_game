class Question
attr_accessor :num1, :num2

  def initialize num1, num2
    @num1 = num1
    @num2 = num2
  end

  def ask_question
    puts "What is #{self.num1} plus #{self.num2}?"
    answer = STDIN.gets.chomp
  end

  def eval_answer
    answer = ask_question
    real_answer = self.num2 + self.num1
    if (answer.to_i) === real_answer
      puts "Yup! You got it"
      true
    else
      puts "Sorry you screwed up. Down one life"
      false
    end
  end

end
