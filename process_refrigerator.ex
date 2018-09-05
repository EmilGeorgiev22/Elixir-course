defmodule Refrigerator do

    def start() do
      spawn fn -> handler(%{}) end
    end

    def handler(map) do
     receive do
      
    {:add, product, quantity} ->
    if Map.has_key?(map, product) do
      updated_map = Map.update!(map, product, fn x -> x + quantity end)
      handler(updated_map)
    else
      updated_map = Map.put(map, product, quantity)
      handler(updated_map)
    end

     {:status} ->
      IO.inspect(map)
      handler(map)
        
    {:take, product, quantity} ->
      updated_map = Map.update!(map, product, fn x -> if x - quantity > 0 do x - quantity else 0 end end)
      handler(updated_map)
     end
    end

  def add(pid, product, quantity) do
   send(pid, {:add, product, quantity})
  end

  def status(pid) do
   send(pid, {:status})
  end

  def take(pid, product, quantity) do
   send(pid, {:take, product, quantity})
  end

end
