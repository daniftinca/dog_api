defmodule Doggos.Repository do

  def add_dog (dog) do
    :ets.insert(:my_dogs, {"dog", dog})
  end

  def get_dogs() do
    :ets.lookup(:my_dogs, "dog")
    |> Enum.map (fn (x) -> elem(x, 1) end)
  end

  def get_dog_by_name(name) do
    :ets.lookup(:my_dogs, "dog")
    |> Enum.filter(fn (x) -> elem(x,1).name== name end)
    |> Enum.map (fn (x) -> elem(x, 1) end)

  end

  def delete_dog_by_id(id) do
    
  end


end


