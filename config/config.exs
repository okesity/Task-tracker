# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tasktracker,
  ecto_repos: [Tasktracker.Repo]

# Configures the endpoint
config :tasktracker, TasktrackerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "E3K/aXg1hb41lJ2su5cUc87o7g2w56g22o7wuZDRjkGz4S93dDdQ7pNLWW3jxwaW",
  render_errors: [view: TasktrackerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tasktracker.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
config :ecto, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
