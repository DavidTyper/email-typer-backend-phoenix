defmodule EmailTyperBackendWeb.AuthController do
  import Plug.Conn

  def login(conn, %{"email" => email, "password" => password}) do
    # 模拟逻辑
    token = "fake-jwt-token"
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{token: token, success: true}))
  end

  def login(conn, %{"code" => code, "name" => name}) do
    token = "fake-jwt-token"
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{token: token, success: true}))
  end

  def login(conn, _) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{token: "", success: false}))
  end

  def register(conn, %{"email" => _email, "password" => _password}) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{success: true}))
  end

  def register(conn, _) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{success: false}))
  end
end
