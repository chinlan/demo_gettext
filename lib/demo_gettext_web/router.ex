defmodule DemoGettextWeb.Router do
  use DemoGettextWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug SetLocale, gettext: DemoGettextWeb.Gettext, default_locale: 'en'
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DemoGettextWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/:locale", DemoGettextWeb do
    pipe_through :browser
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", DemoGettextWeb do
  #   pipe_through :api
  # end
end
