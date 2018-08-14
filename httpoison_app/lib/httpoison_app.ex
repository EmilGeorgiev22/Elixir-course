defmodule Dog do

  @moduledoc """
  Documentation for HttpoisonApp.
  """

  def get_dog_picture() do
    url = "https://dog.ceo/api/breeds/image/random"
     HTTPoison.get!(url)
  end
end
