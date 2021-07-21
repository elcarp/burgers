defmodule Burgers.Restaurants.Burger do

  defstruct [:id, :name, :location]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Restaurants.Burger
  end

  def new(%{name: name, location: location}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      location: location,
    }
  end
end
