defmodule BasicMailerAppWeb.Email do
  @moduledoc """
  This module builds emails and renderes their layouts
  """

  use Bamboo.Phoenix, view: BasicMailerAppWeb.EmailView
  import Bamboo.Email

  def random_email() do
    new_email()
    |> put_layout({BasicMailerAppWeb.EmailLayoutView, :layout})
    |> from({"My Basic Mailer App", "no-reply@my_basic_mailer.com"})
    |> to({"Some Random Recipient", "recipient@example.com"})
    |> subject("Just a random email")
    |> render(:random_email)
  end

end
