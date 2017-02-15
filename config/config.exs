# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :yt_comment_service,
  ecto_repos: [YtCommentService.Repo]

# Configures the endpoint
config :yt_comment_service, YtCommentService.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LFUsu2zIcj2ugWYw8yaf2AUPXJXQSsf3rP5vNyuVl7JARNks80VySRHAmInA6AXH",
  render_errors: [view: YtCommentService.ErrorView, accepts: ~w(html json)],
  pubsub: [name: YtCommentService.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
