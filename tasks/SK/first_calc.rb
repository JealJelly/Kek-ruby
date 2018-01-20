# frozen_string_literal: true
require 'ealJelly.rb'

def request_input
  puts 'Введите пример (для выхода введите exit):'
  request = gets
  request = request.chomp
  return 0 if request == 'exit'
  if request.scan(%r{/^(?:\d+(\.\d+)?\s*[*+\/-])+\s*\d+(\.\d+)?$/}) == []
    puts 'Некорректный ввод'
  else
    request_parse(request)
  end
  request_input
end

def request_parse(request)
  operator = request.scan(%r{/[*+\/-]/})[0]
  first_value = request.split(operator)[0]
  second_value = request.split(operator)[1]
  number = Number.new
  result = number.send(operator, first_value, second_value)
  puts request + "=#{result}"
end

request_input
