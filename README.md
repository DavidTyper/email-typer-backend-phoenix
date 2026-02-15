# Email-Typer Backend (Elixir Refactor)

This is a refactored backend for the [Email-Typer](https://github.com/DavidCiallo/Email-Typer) project, rewritten using Elixir and Phoenix-style architecture.

## Features

- **Email Management**: List and send emails.
- **Strategy Management**: Configure forwarding and callback strategies.
- **Environment Driven**: Configurable via environment variables.
- **Lightweight**: Built with Plug and Cowboy.

## Prerequisites

- [Elixir](https://elixir-lang.org/install.html) 1.14 or later.
- [Erlang/OTP](https://www.erlang.org/downloads) 25 or later.

## Quick Start

### 1. Clone the repository
```bash
git clone https://github.com/DavidTyper/email-typer-backend-phoenix
cd email-typer-backend-phoenix
```

### 2. Install dependencies
```bash
mix deps.get
```

### 3. Environment Variables

Create a `.env` file or export the following variables:

| Variable | Description | Default |
|----------|-------------|---------|
| `EMAIL_DATA_DIR` | Directory where `email.json` and `strategy.json` are stored. | `./email_data` |
| `SERVER_HTTP_PORT` | The port the server will listen on. | `4000` |

### 4. Running the Application

**Development Mode (with Interactive Elixir shell):**
```bash
iex -S mix
```

**Normal Start:**
```bash
mix run --no-halt
```

The server will be available at `http://localhost:4000` (or your configured port).

## API Endpoints

- `POST /api/auth/login` - User login
- `POST /api/auth/register` - User registration
- `GET /api/email/list` - Fetch email list (supports `?page=n`)
- `POST /api/email/send` - Send an email
- `GET /api/stategy/list` - Fetch strategy list
- `POST /api/stategy/save` - Save/Update a strategy
- `POST /api/stategy/delete` - Delete a strategy

## License

Same as original project.
