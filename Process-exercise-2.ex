defmodule Ex13 do

  def zad1() do
    spawn fn ->
      receive do
        {:ping} ->
          IO.puts("Ping")
      end
    end
    zad1()
  end
  
  def ping do
    spawn fn ->
      receive do
        {:ping, send_to} ->
          Process.sleep(1000)
          IO.puts("ping")
          send(send_to, {:pong, ping()})
        {:stop} ->
          #  Process.exit(self(), :kill)
          System.halt
      end
    end
  end

  def pong do
    spawn fn ->
      receive do
        {:pong, send_to} ->
          Process.sleep(1000)
          IO.puts("pong")
          send(send_to, {:ping, pong()})
      end
    end
  end
  
end
