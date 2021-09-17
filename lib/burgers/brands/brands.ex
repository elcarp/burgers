defmodule Burgers.Brands do
  alias __MODULE__.Burger

  defdelegate new_burger(params),
    to: Burger,
    as: :new

  defdelegate new_branch(params),
    to: Branch,
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

  defdelegate store_branch(branch),
    to: Branch.Store,
    as: :add

  defdelegate get_branch(branch_id),
    to: Branch.Store,
    as: :get

  defdelegate all_branches,
    to: Branch.Store,
    as: :all

  defdelegate update_burger(burger, params),
    to: Burger.Store,
    as: :update
end
