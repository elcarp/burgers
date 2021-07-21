defmodule Burgers.Restaurants.Burger do

  defstruct [:id, :name, :location, :price, :ranking, :delivery, :tags]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Restaurants.Burger
  end

  def new(%{name: name, location: location, price: price, ranking: ranking, delivery: delivery, tags: tags}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      location: location,
      price: price,
      ranking: ranking,
      delivery: delivery,
      tags: tags
    }
  end
end
