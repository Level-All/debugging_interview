defmodule BlogWeb.Router do
  use BlogWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_live_flash)
    plug(:put_root_layout, html: {BlogWeb.Layouts, :root})
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  scope "/engine", BlogWeb.Engine, as: :engine do
    pipe_through(:browser)

    resources("/posts", PostController)
  end

  scope "/", BlogWeb do
    pipe_through(:browser)

    get("/posts/:post_id", PageController, :post)
    post("/posts/:post_id", PageController, :create_comment)
    post("/comments/:direction/:comment_id", PageController, :vote)
    get("/", PageController, :home)
  end
end
