defmodule Burgers.Brands.Location do
  defstruct [:id, :lat, :long, :delivery, :burger]
  alias Burgers.Storage.Association

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Brands.Location
  end

  # many to many?
  @spec new(%{
          :burger => %{:__struct__ => atom, :id => any, optional(any) => any},
          :delivery => any,
          :lat => any,
          :long => any,
          optional(any) => any
        }) :: %Burgers.Brands.Location{
          burger: %Burgers.Storage.Association{module: atom, resource_id: any},
          delivery: any,
          id: binary,
          lat: any,
          long: any
        }
  def new(%{lat: lat, long: long, delivery: delivery, burger: burger}) do
    %__MODULE__{
      id: UUID.uuid4(),
      lat: lat,
      long: long,
      delivery: delivery,
      burger: Association.new(burger)
    }
  end
end
