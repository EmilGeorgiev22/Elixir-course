defmodule Ex12 do

def zad1 do
spawn fn -> IO.puts("Hello new lesson!") end
end

  def zad2(pid, num) do
    spawn fn -> send(pid, {:num, num*2}) end
    receive do
     {:num, num} -> num
    end
    #pid = spawn fn -> receive do {:num, num} -> IO.puts(num*2) end end
  end

  def zad3(pid, func) do
    spawn fn -> send(pid, {:func, func}) end
    receive do
      {:func, func} -> func.()
    end
    end

  def zad4(x), do: zad4(x,[], 0, 0, self())

  
  def zad4(x, list, iterator, iterator2, pid) do
    if iterator <= x do
      spawn fn -> send(pid, {:num, iterator * 2}) end
      zad4(x, list, iterator + 1, iterator2, pid)
    else
      if iterator2 <= x do
        result = receive do
          {:num, result} -> result
        end
        zad4(x, [result | list], iterator, iterator2 + 1, pid)
      else
        Enum.reverse(list)
      end
    end
  end
end

