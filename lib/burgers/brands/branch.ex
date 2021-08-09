defmodule Burgers.Brands.Branch do
  defstruct [:id, :lat, :long, :delivery, :burger]
  alias Burgers.Storage.Association

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Brands.Branch
  end

  # many to many?

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
