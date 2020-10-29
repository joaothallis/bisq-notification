defmodule BisqNotification.Repo do
  use Ecto.Repo,
    otp_app: :bisq_notification,
    adapter: Ecto.Adapters.Postgres
end
