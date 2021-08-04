defmodule Burgers.BurgerShop.Burger do
  @derive Jason.Encoder

  defstruct [:id, :name, :location, :food, :branch]
#add plurals
  defmodule Store do
    use Burgers.Storage.Base, module: Burgers.BurgerShop.Burger
  end

  def new(%{name: name, location: location, food: food, branch: branch}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      location: location.id,
      food: food,
      branch: branch
    }
  end
end
