defmodule EmailTyperBackendWeb.StrategyController do
  import Plug.Conn

  def index(conn, _params) do
    strategies = [
      %{email: "test@example.com", forward: "user@gmail.com", comment: "Refactored"}
    ]
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{list: strategies, total: 1}))
  end

  def save(conn, _params) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{success: true}))
  end

  def delete(conn, _params) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{success: true}))
  end
end
