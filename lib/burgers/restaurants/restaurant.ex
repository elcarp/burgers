defmodule Burgers.Restaurant do
  alias __MODULE__.Burgers

  defdelegate new_burger(params),
    to: Burger,
    as: :new

  defdelegate all_burgers,
    to: Burger.Store,
    as: :all

  defdelegate get_burger(burger_id),
    to: Burger.Store,
    as: :get

  defdelegate store_burger(burger),
    to: Burger.Store,
    as: :add
end
