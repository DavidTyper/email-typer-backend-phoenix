defmodule EmailTyperBackend.EmailService do
  @moduledoc """
  Service for reading email data from the local filesystem.
  """

  def get_all_emails do
    data_dir = Application.get_env(:email_typer_backend, :data_dir)
    file_path = Path.join(data_dir, "email.json")

    case File.read(file_path) do
      {:ok, content} ->
        case Jason.decode(content) do
          {:ok, emails} -> emails
          {:error, _} -> []
        end
      {:error, _} ->
        []
    end
  end

  def send_email(params) do
    # Here you would implement the actual SMTP/Sendgrid logic
    # For now, we simulate success
    IO.inspect(params, label: "Sending Email")
    true
  end
end
