defmodule Burgers.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      Burgers.Places.Burger.Store,
      {Plug.Cowboy, scheme: :http, plug: Burgers.Router, options: [port: 4040]}
      # Starts a worker by calling: Burgers.Worker.start_link(arg)
      # {Burgers.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Burgers.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
