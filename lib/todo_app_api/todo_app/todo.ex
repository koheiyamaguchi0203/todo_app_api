defmodule TodoAppApi.TodoApp.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :archived, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:title, :archived])
    |> validate_required([:title, :archived])
  end
end
