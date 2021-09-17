defmodule Burgers.Brands.Branch do
  @derive Jason.Encoder
  defstruct [:id, :name, :burger]

  alias Burgers.Storage.Association

  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Brands.Branch
  end

  def new(%{name: name, burger: burger}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      burger: Association.new(burger)
    }
  end
end
