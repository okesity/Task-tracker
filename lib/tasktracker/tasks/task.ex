defmodule Tasktracker.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tasks" do
    field :desc, :string
    field :name, :string
    # field :assign_user, :string
    field :work_time, :integer, default: 0
    field :completed, :boolean, default: false
    belongs_to :user, Tasktracker.Users.User
    # field :assign_user, :string, null: false
    has_many :timeblocks, Tasktracker.CreateTimeBlock.TimeBlock


    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :desc, :user_id, :work_time, :completed])
    |> validate_required([:name, :desc, :user_id, :work_time, :completed])
  end
end
