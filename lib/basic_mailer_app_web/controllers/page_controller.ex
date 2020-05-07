defmodule BasicMailerAppWeb.PageController do
  use BasicMailerAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
