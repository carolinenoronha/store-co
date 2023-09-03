defmodule StoreCo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      StoreCoWeb.Telemetry,
      # Start the Ecto repository
      StoreCo.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: StoreCo.PubSub},
      # Start Finch
      {Finch, name: StoreCo.Finch},
      # Start the Endpoint (http/https)
      StoreCoWeb.Endpoint
      # Start a worker by calling: StoreCo.Worker.start_link(arg)
      # {StoreCo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: StoreCo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    StoreCoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
