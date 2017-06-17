use Mix.Config

# Configure your database
config :phoenix_react, PhoenixReact.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_react_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
