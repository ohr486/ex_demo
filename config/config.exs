# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :ex_demo, ExDemoWeb.Endpoint,
  url: [host: "13.230.100.46"],
  secret_key_base: "AL9mCr3UDPaHIaY4VoOhdnPp7RGc64EwSHUSicmH5KUz9XTlBUhf5Po4z1E4D4Li",
  render_errors: [view: ExDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
