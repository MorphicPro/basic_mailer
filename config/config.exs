# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :basic_mailer_app, BasicMailerAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wfKg2EIjL6DVJF3gD0qzIrlI/GKXLbZATl7GPI0WdgZPC2T35RzhHbX/f8E/HSgx",
  render_errors: [view: BasicMailerAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BasicMailerApp.PubSub,
  live_view: [signing_salt: "2wVzDegI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :basic_mailer_app, BasicMailerAppWeb.Mailer,
  adapter: Bamboo.LocalAdapter,
  # optional
  open_email_in_browser_url: "http://localhost:4000/sent_emails"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
