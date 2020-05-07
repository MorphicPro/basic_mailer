defmodule BasicMailerAppWeb.PageController do
  use BasicMailerAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def send_email(conn, _params) do

    # Create and send the email
    BasicMailerAppWeb.Email.random_email()
    |> BasicMailerAppWeb.Mailer.deliver_now()

    render(conn, "send_email.html")
  end
end
