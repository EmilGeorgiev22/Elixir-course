defmodule ReceiveExample do
  def loop do
    receive do
        :foo -> IO.puts("Done the first task")
      _ -> IO.puts("Done the second task")
    end
    loop()
  end
end
