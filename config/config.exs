# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :peepchat, ecto_repos: [Peepchat.Repo]

# Configures the endpoint
config :peepchat, PeepchatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+ej1SGvyaltOGfp8Cu4T795VF96NADjc2v0CiJQ4L+thYri/OHhBueJRIyNJJIzN",
  render_errors: [view: PeepchatWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Peepchat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config :phoenix, :format_encoders, "json-api": Poison

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

config :phoenix, :format_encoders, "json-api": Poison

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
