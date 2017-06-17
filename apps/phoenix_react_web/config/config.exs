# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_react_web,
  namespace: PhoenixReact.Web,
  ecto_repos: [PhoenixReact.Repo]

# Configures the endpoint
config :phoenix_react_web, PhoenixReact.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Q5BS1YZkpNeaRN5qmOuTZ1tjkbIeUTpN3lcG1ffeEUtL0O3mt1+db2Ab5AmyEV6m",
  render_errors: [view: PhoenixReact.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixReact.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix_react_web, :generators,
  context_app: :phoenix_react

config :guardian, Guardian,
    allowed_algos: ["HS512"], # optional
    verify_module: Guardian.JWT,  # optional
    issuer: "PhoenixReact",
    ttl: { 30, :days },
    allowed_drift: 2000,
    verify_issuer: true, # optional
    serializer: PhoenixReact.Web.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
