# frozen_string_literal: true
def request_input
  puts 'Введите пример (для выхода введите exit):'
  request = gets
  request = request.chomp
  return 0 if request == 'exit'
  if request.scan(%r(/^(?:\d+(\.\d+)?\s*[*+\/-])+\s*\d+(\.\d+)?$/)) == []
    puts 'Некорректный ввод'
  else
    request_parse(request)
  end
  request_input
end

class Number
  def add (arg1, arg2)
    arg1+arg2
  end
  def sub (arg1, arg2)
    arg1-arg2
  end
  def multi (arg1, arg2)
    arg1*arg2
  end
  def div (arg1, arg2)
    result = arg1.to_f/arg2.to_f
    result.to_i if (result % 1).zero?
  end
end

def request_parse(request)
  operator = request.scan(%r(/[*+\/-]/))[0]
  first_value = request.split(operator)[0]
  second_value = request.split(operator)[1]
  number = Number.new
  case operator
    when '+'
      result = number.add(first_value, second_value)
    when '-'
      result = number.sub(first_value, second_value)
    when '*'
      result = number.multi(first_value, second_value)
    when '/'
      result = number.div(first_value, second_value)
  end
  puts request + "=#{result}"
end

def run_calculator
  puts 'Это калькулятор. Вау!'
  request_input
end

run_calculator
