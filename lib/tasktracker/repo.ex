defmodule Tasktracker.Repo do
  use Ecto.Repo,
    otp_app: :tasktracker,
    adapter: Ecto.Adapters.Postgres
end
