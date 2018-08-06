defmodule TodoApp do
  @moduledoc """
  Documentation for TodoApp.
  """

  def new() do
    []
  end

  def add(todo_list, id, text, date, status) do
    map = %{id: id, text: text, date: date, status: status}
    [map | todo_list]
  end

  def find(list, id) do
    Enum.filter(list, fn todo -> id == todo.id end)
  end

  def remove(list, id) do                                                                           
     Enum.reject(list, fn todo -> id == todo.id end)
   end

end
