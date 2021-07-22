alias Burgers.Storage.Association

defmodule Burgers.Venues.Location do
  defstruct [:id, :location, :burger]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Venues.Location
  end

  def new(%{location: location, burger: burger}) do
    %__MODULE__{
      id: UUID.uuid4(),
      location: location,
      burger: Association.new(burger)
    }
  end
end
