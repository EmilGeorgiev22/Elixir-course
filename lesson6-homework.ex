defmodule Ex6Zad1 do

  def calculate([]), do: {:error, "List is empty"}
  def calculate(list) do
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end
  
  end


defmodule Ex6Zad2 do

  def concatenate([]), do: {:error, "List is empty"}
  def concatenate(list) do
  Enum.reduce(list, "", fn x, acc -> x <> acc end)
  end
  
  end

defmodule Ex6Zad3 do
 def remove_odd([]), do: {:error, "List is empty"}

 def remove_odd(list) do
 Enum.reduce(list, [], fn x, acc -> if rem(x,2) == 0 do [x | acc] else acc end end)
 end
 
end


defmodule Ex6Zad4 do

  def double_all([]), do: {:error, "List is empty"}
  def double_all(list) do
    Enum.reduce(list, [], fn x, acc -> [x*2 | acc] end)
  end

  def double_even([]), do: {:error, "List is empty"}
  def double_even(list) do
    Enum.reduce(list, [], fn x, acc -> if rem(x,2) == 0 do [x*2 | acc] else acc end end)
  end
  
  end

defmodule Refrigerator do

  def new() do
   %{}
  end

  def add(map, product, count) do
    if Map.has_key?(map, product) do
      Map.update!(map, product, fn x -> x + count end)
    else
      Map.put(map, product, count)
    end
    end

    def remove(map, product, count) do    
    Map.update!(map, product, fn x -> if x - count > 0 do x - count else 0 end end)
    end

   end
