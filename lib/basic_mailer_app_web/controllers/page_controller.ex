defmodule BasicMailerAppWeb.PageController do
  use BasicMailerAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def send_email(conn, _params) do
    render(conn, "send_email.html")
  end
end
