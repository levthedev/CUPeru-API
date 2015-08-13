# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :rest_api, RestApi.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "tIGT0c5a7eg6VkhSdfxymWHBm9UyfHDEJeSDZy6em5rv8q/urWFNIhq8g6/KM0w+",
  render_errors: [default_format: "html"],
  pubsub: [name: RestApi.PubSub,
           adapter: Phoenix.PubSub.PG2],
  database: "rest-api",
  username: "lev",
  password: "password",
  hostname: "localhost",
  port: 5432

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

