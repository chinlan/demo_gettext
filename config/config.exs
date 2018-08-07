# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :demo_gettext, DemoGettextWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Nmtw3KfixE2Q9udAqzucOeowHug601MxAfW+pCiyY0Y71kg2nzxOp9ORbjLrf0Il",
  render_errors: [view: DemoGettextWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DemoGettext.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :demo_gettext, DemoGettextWeb.Gettext, default_locale: "en"#, locales: ~w(en ja)

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
