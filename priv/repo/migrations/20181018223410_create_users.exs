defmodule Tasktracker.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :manager, references(:users, on_delete: :delete_all), null: false
      add :admin, :boolean, default: false, null: false

      timestamps()
    end

  end
end
