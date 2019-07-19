defmodule TodoAppApiWeb.PageController do
  use TodoAppApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
