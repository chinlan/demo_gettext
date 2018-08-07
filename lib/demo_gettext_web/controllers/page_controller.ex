defmodule DemoGettextWeb.PageController do
  use DemoGettextWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
