defmodule Ex9 do
  
  def all_true(list, func) when is_list(list) and is_function(func) do
    Enum.all?(list, fn x -> func.(x) end)
  end

  def all_true(list, func), do: "Wrong argument types!"

  def any_true(list, func) when is_list(list) and is_function(func) do
    Enum.any?(list, fn x-> func.(x) end)
  end

  def any_true(list, func), do: "Wrong argument types!"    

  def get_element_at(list, int, value) when is_list(list) and is_integer(int) and is_integer(value) do
    if length(list) > int do
      Enum.at(list, int)
    else
      value
    end
  end

  def get_element_at(list, int, value), do: "Wrong argument types!"

  def max_by(list, func) when is_list(list) and is_function(func) do
    Enum.max_by(list, fn x -> func.(x) end)
  end

  def max_by(list, func), do: "Wrong argument types!"

  def take_first_n(list, int) when is_list(list) and is_integer(int) do
    Enum.take(list, int)
  end

  def take_first_n(list, int), do: "Wrong argument types!"
  
end
