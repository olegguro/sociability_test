class Test
  attr_reader :points, :answer

  def initialize(questions)
    @questions = questions
    @questions = File.readlines(questions).map(&:chomp)

    @points = 0
    @current_question = 0
  end

  def finished?
    return @current_question >= @questions.size
  end

  def next_question
    puts @questions[@current_question]

    user_input = nil
    until user_input == 1 || user_input == 2 || user_input == 3
      puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"
      user_input = gets.to_i
    end

    if user_input == 1
      @points += 2
    elsif user_input == 3
      @points -= 1
    end
    @current_question += 1
  end
end
