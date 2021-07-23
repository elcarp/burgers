defmodule Burgers.Router do
  use Plug.Router
    plug(Plug.Parsers, parsers: [:json], json_decoder: Jason)


  plug :match
  plug :dispatch

  get "/burgers" do
    burgers = Burgers.Places.Burger.Store.all()

    conn
    |> put_resp_header("content-type", "application/json")
    |> send_resp(200, Jason.encode!(burgers))
  end
end
