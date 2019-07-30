defmodule TodoAppApiWeb.TodoView do
  use TodoAppApiWeb, :view
  alias TodoAppApiWeb.TodoView

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    inserted_at = todo.inserted_at
    |> NaiveDateTime.diff(~N[1970-01-01 00:00:00])

    %{id: todo.id,
      title: todo.title,
      archived: todo.archived,
      inserted_at: inserted_at}
  end
end
