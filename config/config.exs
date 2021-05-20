# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :supabase_surface_site, SupabaseSurfaceSiteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tT1QSt1N87nFvOKkjrC52Gz6DfmKaOGzdFT1Nn6iYndgIgkKHL3VAU5HinCMHNTm",
  render_errors: [view: SupabaseSurfaceSiteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SupabaseSurfaceSite.PubSub,
  live_view: [signing_salt: "rthHKHbm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :surface_catalogue,
  title: "Supabase UI",
  subtitle: "Surface components for your next Phoenix Project",
  catalogues: ["SupabaseSurface"],
  home_view: SupabaseSurfaceSiteWeb.HomeView

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
