defmodule Burgers.Places.Burger do
  @derive Jason.Encoder

  defstruct [:id, :name, :location]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Places.Burger
  end

  def new(%{name: name, location: location}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      location: location,
    }
  end
end
