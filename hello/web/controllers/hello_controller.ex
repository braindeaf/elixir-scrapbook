defmodule Hello.HelloController do
  use Hello.Web, :controller

  def world(conn, %{"name" => "robl"}) do
    render(conn, "world.html", name: "Pillock")
  end

  def world(conn, %{"name" => name}) do
    render(conn, "world.html", name: name)
  end
end
