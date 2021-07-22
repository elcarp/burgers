defmodule Classroom.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/burgers" do
    burgers = Burgers.Restaurants.Burger.Store.all()

    conn
    |> put_resp_header("content-type", "application/json")
    |> send_resp(200, Jason.encode!(burgers))
  end
end
