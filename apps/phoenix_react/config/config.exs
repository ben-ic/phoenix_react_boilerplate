use Mix.Config

config :phoenix_react, ecto_repos: [PhoenixReact.Repo]

import_config "#{Mix.env}.exs"
