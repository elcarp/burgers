alias Burgers.Storage.Association

defmodule Burgers.BurgerShop.Location do
  defstruct [:id, :location, :burger, :lat, :long, :delivery]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.BurgerShop.Location
  end
#
  def new(%{location: location, burger: burger}) do
    %__MODULE__{
      id: UUID.uuid4(),
      location: location,
      burger: Association.new(location)
    }
  end
end
