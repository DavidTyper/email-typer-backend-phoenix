defmodule EmailTyperBackendWeb.EmailController do
  import Plug.Conn

  def index(conn, _params) do
    # 模拟数据
    emails = [
      %{id: "1", subject: "Welcome", body: "Hello Elixir", create_time: 1700000000}
    ]
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{list: emails, total: 1}))
  end

  def send(conn, _params) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{success: true}))
  end
end
