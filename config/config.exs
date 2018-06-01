# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ectoproj,
  ecto_repos: [Ectoproj.Repo]

# Configures the endpoint
config :ectoproj, EctoprojWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "67Pg2mO7FnMFqX6hJh9daTBTBD1P6Zt5rLvUo0B67nINSnRiEdKWNyC1UXAPfGff",
  render_errors: [view: EctoprojWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ectoproj.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
