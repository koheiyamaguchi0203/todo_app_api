# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todo_app_api,
  ecto_repos: [TodoAppApi.Repo]

# Configures the endpoint
config :todo_app_api, TodoAppApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ecCfQ7h1P2ne9rXRHQiI3a+B8/usfcuBN7HXsj05EscbQ/NbVn/u4g6mSkNAHSQz",
  render_errors: [view: TodoAppApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodoAppApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
