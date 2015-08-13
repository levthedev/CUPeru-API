use Mix.Config

config :rest_api, RestApi.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: System.get_env("HOST"), port: 80],
  cache_static_manifest: "priv/static/manifest.json"

config :logger, level: :info

config :rest_api, RestApi.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :rest_api, RestApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  size: 20
