import Config

config :email_typer_backend,
  data_dir: System.get_env("EMAIL_DATA_DIR") || "./email_data",
  port: String.to_integer(System.get_env("SERVER_HTTP_PORT") || "4000")
