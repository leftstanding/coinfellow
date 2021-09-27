import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :coinfellow, CoinfellowWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qyyyInbu3cADR0BtoHwF55gAk//1X9IR28pG/OKjIE+k9JtDy+msyL6gXpLzo/Ao",
  server: false

# In test we don't send emails.
config :coinfellow, Coinfellow.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
