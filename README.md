# Tasktracker

## Design Choices:
.
OverAll
- The website contains two main pages, showing list of tasks and registered users
- If one has not logged in, buttons that could make any change are hidden (i.e edit/delete)
- New user could be registrated when not logged in

Tasks
- When creating a task, the manager of it must be selected from one of all users. 
- After logged in, two tables will be presented in the main page. They are tasks-under-management and all-tasks.
- Only the assigned-to user could add time blocks to a task
- Time Blocks are listed in the 'Show' page of each task

Users
- A user can be managed by or manage other users.
- Detailed relationship corresponds to a user are listed in the 'Show' page of a user.

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
