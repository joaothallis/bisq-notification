# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bisq_notification,
  ecto_repos: [BisqNotification.Repo]

# Configures the endpoint
config :bisq_notification, BisqNotificationWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uIlqvtYu75KGfliF/mA1JwoP3ljQr1m9I0O4itPtXngRq1yflvtlOBfqiRq2pm3a",
  render_errors: [view: BisqNotificationWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BisqNotification.PubSub,
  live_view: [signing_salt: "4mEHaJ7i"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
