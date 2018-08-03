defmodule Ex7Zad1 do

  def largest_num(list) when is_list(list) do
   Enum.reduce(list, fn x, acc -> if x > acc do x else acc end end)
  end

  def largest_num(list), do: "This is not a list!"
end
  
defmodule Ex7Zad2 do

   def pow(num, power), do: "Integers only and power must be above 0!"

  def pow(num, power) when is_integer(num) and is_integer(power) and power >= 0 do
     pow(num, power, 1)
    end
  
  def pow(num, power, result) do
    if power > 0 do
      result = result * num
      pow(num, power - 1, result)
    else
      result
    end
    end
    
 end

defmodule Ex7Zad3 do

  def count_digits(num) when is_integer(num) do
    count_digits(to_string(num), 0)
  end

  def count_digits(num), do: "Input an integer!"

def count_digits(str, count) do
if str != "" do
  count_digits(String.slice(str, 1..-1), count + 1)
else
  count
end
end
end

defmodule Ex7Zad4 do
  
  def greatest_denominator(a, b) do
    
    cond do
      
      a == 0 -> 0
      
      b == 0 -> 0
      
      a == b -> a
      
      a > b -> greatest_denominator(a-b, b)

      b > a -> greatest_denominator(a, b-a)

      true -> "No common denominators found!"
    end
    end
end

defmodule Ex7Zad5 do

  def calc_sum() do

    calc_sum(1, 0)

    end

  def calc_sum(i, result) do

    if i < 1000 do
      calc_sum(i+1, if rem(i, 3) == 0 || rem(i, 5) == 0 do result + i else result end)

    else
      result

    end
      
  end
end

defmodule Ex7Zad6 do

  def fibonacci() do
    fibonacci(1, 2, 0)
    
  end

  def fibonacci(a, b, result) do
    
    if result < 4000000 do
      fibonacci(b, b+a, if rem(b, 2) == 0 do result + b else result end)
      
    else
      result
      
    end
  end
    
end
