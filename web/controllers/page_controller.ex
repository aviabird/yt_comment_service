defmodule YtCommentService.PageController do
  use YtCommentService.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
