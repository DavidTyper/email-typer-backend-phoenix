defmodule EmailTyperBackendWeb.Router do
  use Plug.Router

  plug CORSPlug, origin: "*"
  plug :match
  plug Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Jason

  plug :dispatch

  # Auth
  post "/api/auth/login" do
    EmailTyperBackendWeb.AuthController.login(conn, conn.body_params)
  end

  post "/api/auth/register" do
    EmailTyperBackendWeb.AuthController.register(conn, conn.body_params)
  end

  # Email
  get "/api/email/list" do
    EmailTyperBackendWeb.EmailController.index(conn, conn.params)
  end

  post "/api/email/send" do
    EmailTyperBackendWeb.EmailController.send(conn, conn.body_params)
  end

  # Strategy
  get "/api/stategy/list" do
    EmailTyperBackendWeb.StrategyController.index(conn, conn.params)
  end

  post "/api/stategy/save" do
    EmailTyperBackendWeb.StrategyController.save(conn, conn.body_params)
  end

  post "/api/stategy/delete" do
    EmailTyperBackendWeb.StrategyController.delete(conn, conn.body_params)
  end

  match _ do
    send_resp(conn, 404, "Not Found")
  end
end
