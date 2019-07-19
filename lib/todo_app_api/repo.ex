defmodule TodoAppApi.Repo do
  use Ecto.Repo,
    otp_app: :todo_app_api,
    adapter: Ecto.Adapters.MyXQL
end
