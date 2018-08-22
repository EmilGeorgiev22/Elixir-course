defmodule ReceiveExample do
  def loop when do
    receive do
        :foo -> IO.puts("Done the first task")
      _ -> IO.puts("Done the second task")
    end
    loop()
  end
end
