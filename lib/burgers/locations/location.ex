alias Burgers.Storage.Association

defmodule Burgers.Locations.Location do
  defstruct [:id, :location, :burger]

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Locations.Location
  end
    #add lat long
#many to many
#add delivery store
#add shop store
#add price store
  def new(%{location: location, burger: burger}) do
    %__MODULE__{
      id: UUID.uuid4(),
      location: location,
      burger: Association.new(location)
    }
  end
end
