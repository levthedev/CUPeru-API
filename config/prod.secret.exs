use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :rest_api, RestApi.Endpoint,
  secret_key_base: "0FiveHrcRrRRp+4a1fECzNDaMN3aibi63X6GFDoOPXOtGJ6lVLs7o8Gp/ZLHMyIB"

# Configure your database
config :rest_api, RestApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "rest_api_prod",
  size: 20 # The amount of database connections in the pool
