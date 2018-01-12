defmodule ExDemoWeb.PingController do
  use ExDemoWeb, :controller

  def index(conn, _params) do
    text conn, "ok"
  end
end
