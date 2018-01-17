def request_input
  puts 'Введите пример (для выхода введите exit):'
  request = gets
  request = request.chomp
  if request == 'exit'
    return 0
  end
  if request.scan(/^(?:\d+(\.\d+)?\s*[*+\/-])+\s*\d+(\.\d+)?$/) == []
    puts 'Некорректный ввод'
  else
    request_parse(request)
  end
  request_input
end

def request_parse(request)
  operator = request.scan(/[*+\/-]/)[0]
  first_value = request.split(operator)[0].to_f
  second_value = request.split(operator)[1].to_f
  result = eval ("#{first_value}#{operator}#{second_value}")
  if result%1==0
    result = result.to_i
  end
  puts request+"=#{result}"
end

def run_calculator
  puts 'Это калькулятор. Вау!'
  request_input
end

run_calculator