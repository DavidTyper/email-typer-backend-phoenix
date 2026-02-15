defmodule EmailTyperBackendWeb.EmailController do
  import Plug.Conn
  alias EmailTyperBackend.EmailService

  def index(conn, params) do
    page = String.to_integer(params["page"] || "1")
    all_emails = EmailService.get_all_emails()
    
    # Simple pagination: 10 per page
    offset = (page - 1) * 10
    paginated_emails = Enum.slice(all_emails, offset, 10)
    
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{list: paginated_emails, total: length(all_emails)}))
  end

  def send(conn, params) do
    success = EmailService.send_email(params)
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{success: success}))
  end
end
