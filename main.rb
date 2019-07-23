require_relative 'lib/test'
require_relative 'lib/result_printer'

puts "Тест \"Ваш уровень общительности.\" Версия 3 (c) Oleg Guro\n\n"
puts "Ответьте на вопросы:"

questions = 'data/questions.txt'
results = 'data/results.txt'

test = Test.new(questions)
result_printer = ResultPrinter.new(results)

until test.finished?
  test.next_question
end

result_printer.print_result(test)
