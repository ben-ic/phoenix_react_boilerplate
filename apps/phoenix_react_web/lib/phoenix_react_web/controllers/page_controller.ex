defmodule PhoenixReact.Web.PageController do
  use PhoenixReact.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def react_app(conn, _params) do
    render conn, "react_app.html", layout: {PhoenixReact.Web.LayoutView, "react_app.html"}
  end
end
