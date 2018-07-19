 defmodule Ex5Zad1 do

  def sum_list([]), do: IO.puts(0)

  def sum_list([], result), do: result
  
  def sum_list([head | tail], result) do
    result = result + head
    sum_list(tail, result)
   end

  def sum_list([head | tail]), do: sum_list([head | tail],0)
  
  end

 defmodule Ex5Zad2 do

   def sizeof_list([]), do: IO.puts(0)

   def sizeof_list([], size), do: size

   def sizeof_list([head | tail], size) do
     size = size + 1
     sizeof_list(tail, size)
    end

   def sizeof_list([head | tail]), do: sizeof_list([head | tail],0)

  end

 defmodule Ex5Zad3 do

   def calc_even([]), do: IO.puts(0)
   
   def calc_even([], result), do: result

   def calc_even([head | tail], result) do
   if rem(head,2) == 0 do
     result = result + head
     calc_even(tail, result)
   else
     calc_even(tail, result)
  end
   end

   def calc_even([head | tail]), do: calc_even([head | tail],0)
   end

 defmodule Ex5Zad4 do

   def uppercase_list([]), do: IO.puts("List is empty")

   def uppercase_list([], list), do: list

   def uppercase_list([head | tail], list) do
     if String.starts_with?(head, "a") || String.starts_with?(head, "A") do
     list = list ++ [String.upcase(head)]
     uppercase_list(tail,list)
    else
      uppercase_list(tail,list)
   end
    end

   def uppercase_list([head | tail]), do: uppercase_list([head | tail], [])
    
    end
