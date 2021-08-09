defmodule Burgers.Brands.Burger do
  @derive Jason.Encoder

  defstruct [:id, :name, :food, :branch]
#add plurals
  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Brands.Burger
  end

  def new(%{name: name, food: food, branch: branch}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      food: food,
      branch: branch
    }
  end
end
