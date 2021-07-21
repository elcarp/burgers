defmodule Burgers.Venues.Location do
  defstruct [:id, :name]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Venues.Location
  end

  def new(%{name: name}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name
    }
  end
end
