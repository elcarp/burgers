defmodule Burgers.Restaurants.Burger do

  defstruct [:id, :name, :location, :price, :ranking, :delivery, :tags]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Restaurants.Burger
  end

  @spec new(%{
          :delivery => any,
          :location => any,
          :name => any,
          :price => any,
          :ranking => any,
          :tags => any,
          optional(any) => any
        }) :: %Burgers.Restaurants.Burger{
          delivery: any,
          id: binary,
          location: any,
          name: any,
          price: any,
          ranking: any,
          tags: any
        }
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
