defmodule EctoprojWeb.PageController do
  use EctoprojWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
