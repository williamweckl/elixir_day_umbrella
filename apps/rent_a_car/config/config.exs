# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rent_a_car,
  namespace: RentACar,
  ecto_repos: [RentACar.Repo]

# Configures the endpoint
config :rent_a_car, RentACarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bN6bfgBqkhZcLPxgOR/26MrkHirwHTSEMHXFGrYbX3XYGWJgjW0XT+5Vgr5PXH5T",
  render_errors: [view: RentACarWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: RentACar.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
