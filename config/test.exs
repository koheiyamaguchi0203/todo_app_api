use Mix.Config

# Configure your database
config :todo_app_api, TodoAppApi.Repo,
  username: "root",
  password: "",
  database: "todo_app_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :todo_app_api, TodoAppApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
