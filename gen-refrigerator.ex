defmodule Refrigerator do
  use GenServer
  
  def init(map) do
    {:ok, map}
  end

  def add(pid, product, quantity) do
    GenServer.call(pid, {:add, product, quantity})
  end

  def status(pid) do
    GenServer.call(pid, {:status})
  end

  def take(pid, product, quantity) do
    GenServer.call(pid, {:take, product, quantity})
  end

  def handle_call({:add, product, quantity}, _from, map) do
    if Map.has_key?(map, product) do
      updated_map =  Map.update!(map, product, fn x -> x + quantity end)
      {:reply, updated_map, updated_map}
    else
      updated_map = Map.put(map, product, quantity)
      {:reply, updated_map, updated_map}
    end
  end

  def handle_call({:status}, _from, map) do
    {:reply, map, map}
  end

  def handle_call({:take, product, quantity}, _from, map) do
    if Map.has_key?(map, product) do
      if Map.get(map, product) > quantity do
        updated_map = Map.update!(map, product, fn x -> x - quantity end)
        {:reply, updated_map, updated_map}
      else
        updated_map = Map.delete(map, product)
        {:reply, updated_map, updated_map}
      end
    end
 end
  
end
