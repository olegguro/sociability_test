class ResultPrinter
  attr_reader :results

  def initialize(results)
    @results = File.readlines(results).map(&:chomp)
  end

  def print_result(test)
    puts "\n\nРезультат теста (всего баллов - #{test.points}):"

    # Логика вывода результатов в зависимости от баллов
    if test.points.between?(30, 32)
      puts @results[0]
    elsif test.points.between?(25, 29)
      puts @results[1]
    elsif test.points.between?(19, 24)
      puts @results[2]
    elsif test.points.between?(14, 18)
      puts @results[3]
    elsif test.points.between?(9, 13)
      puts @results[4]
    elsif test.points.between?(4, 8)
      puts @results[5]
    else
      puts @results[6]
    end
  end
end