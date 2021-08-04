defmodule Burgers.BurgerShop.Location do
  defstruct [:id, :lat, :long, :delivery]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.BurgerShop.Location
  end
#many to many?
  def new(%{lat: lat, long: long, delivery: delivery}) do
    %__MODULE__{
      id: UUID.uuid4(),
      lat: lat,
      long: long,
      delivery: delivery
    }
  end
end
