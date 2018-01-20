module NumberGemJealJelly
  # Class for numbers and arithmetic operations
  class Number
    def +(arg1, arg2)
      arg1 + arg2
    end

    def -(arg1, arg2)
      arg1 - arg2
    end

    def *(arg1, arg2)
      arg1 * arg2
    end

    def /(arg1, arg2)
      result = arg1.to_f / arg2.to_f
      result.to_i if (result % 1).zero?
    end
  end
end
