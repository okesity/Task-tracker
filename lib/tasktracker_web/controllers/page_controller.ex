defmodule TasktrackerWeb.PageController do
  use TasktrackerWeb, :controller

  def index(conn, _params) do
      conn
      |> redirect(to: Routes.task_path(conn, :index))
  end
end
