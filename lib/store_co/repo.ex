defmodule StoreCo.Repo do
  use Ecto.Repo,
    otp_app: :store_co,
    adapter: Ecto.Adapters.Postgres
end
