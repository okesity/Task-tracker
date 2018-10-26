defmodule TasktrackerWeb.UserController do
  use TasktrackerWeb, :controller

  alias Tasktracker.Users
  alias Tasktracker.Users.User

  def index(conn, _params) do
    users = Users.list_users()
    user = Users.get_user(get_session(conn, :user_id) || -1)
    user_id = 
    if is_nil(user) do
      -1
    else
      user.id
    end
    render(conn, "index.html", users: users, user_id: user_id) # user_id used to check if already logged in
  end

  def new(conn, _params) do
    changeset = Users.change_user(%User{})
    userslist = Users.list_users
    render(conn, "new.html", userslist: userslist, changeset: changeset)
  end

  def create(conn, %{"user" => user_params}) do
    case Users.create_user(user_params) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "User created successfully.")
        |> put_session(:user_id, user.id)
        |> redirect(to: Routes.user_path(conn, :show, user))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    user = Users.get_user!(id)
    manager_id = user.manager
    manager = Users.get_user!(manager_id)
    render(conn, "show.html", user: user, manager: manager)
  end

  def edit(conn, %{"id" => id}) do
    user = Users.get_user!(id)
    changeset = Users.change_user(user)
    userslist = Users.list_users
    render(conn, "edit.html", user: user, userslist: userslist, changeset: changeset)
  end

  def update(conn, %{"id" => id, "user" => user_params}) do
    user = Users.get_user!(id)

    case Users.update_user(user, user_params) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "User updated successfully.")
        |> redirect(to: Routes.user_path(conn, :show, user))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", user: user, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    user = Users.get_user!(id)
    {:ok, _user} = Users.delete_user(user)

    conn
    |> put_flash(:info, "User deleted successfully.")
    |> redirect(to: Routes.user_path(conn, :index))
  end
end
