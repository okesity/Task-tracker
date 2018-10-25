defmodule Tasktracker.Repo.Migrations.ModifyAssignUser do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
	remove :assign_user
        add :user_id, references(:users, on_delete: :delete_all)
	end
  end
end
