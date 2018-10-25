# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Tasktracker.Repo.insert!(%Tasktracker.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


alias Tasktracker.Repo
alias Tasktracker.Users.User

Repo.insert!(%User{email: "alice@example.com", admin: true, manager: 1})
Repo.insert!(%User{email: "bob@example.com", admin: false, manager: 1})
