defmodule PhoenixReact.Web.Router do
  use PhoenixReact.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug PhoenixReact.Web.Auth
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixReact.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController, only: [:new, :create]
    resources "/sessions", SessionController, only: [:new, :create, :delete]

  end

  scope "/app", PhoenixReact.Web do
    pipe_through [:browser, :authenticate_user]

    get "/", PageController, :react_app
  end
end
