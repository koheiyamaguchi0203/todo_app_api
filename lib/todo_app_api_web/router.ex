defmodule TodoAppApiWeb.Router do
  use TodoAppApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TodoAppApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", TodoAppApiWeb do
    scope "/v1" do
      pipe_through :api
      resources "/todos", TodoController, except: [:new, :edit]
    end
  end
end
