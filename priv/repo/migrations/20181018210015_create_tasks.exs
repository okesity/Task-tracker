defmodule Tasktracker.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string
      add :desc, :text
      add :work_time, :integer
      add :completed, :boolean, default: false, null: false
      # add :assign_user, references(:users, on_delete: :delete_all)
      add :assign_user, :string
      timestamps()
    end
    # create index(:tasks, [:assign_user])
  end
end
