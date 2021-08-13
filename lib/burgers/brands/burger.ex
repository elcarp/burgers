defmodule Burgers.Brands.Burger do
  @derive Jason.Encoder

  defstruct [:id, :name, :food, :branches]
#add plurals
  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.Brands.Burger
  end

  def new(%{name: name, food: food, branches: branches}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      food: food,
      branches: branches
    }
  end
end
