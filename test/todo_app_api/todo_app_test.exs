defmodule TodoAppApi.TodoAppTest do
  use TodoAppApi.DataCase

  alias TodoAppApi.TodoApp

  describe "todos" do
    alias TodoAppApi.TodoApp.Todo

    @valid_attrs %{archived: true, title: "some title"}
    @update_attrs %{archived: false, title: "some updated title"}
    @invalid_attrs %{archived: nil, title: nil}

    def todo_fixture(attrs \\ %{}) do
      {:ok, todo} =
        attrs
        |> Enum.into(@valid_attrs)
        |> TodoApp.create_todo()

      todo
    end

    test "list_todos/0 returns all todos" do
      todo = todo_fixture()
      assert TodoApp.list_todos() == [todo]
    end

    test "get_todo!/1 returns the todo with given id" do
      todo = todo_fixture()
      assert TodoApp.get_todo!(todo.id) == todo
    end

    test "create_todo/1 with valid data creates a todo" do
      assert {:ok, %Todo{} = todo} = TodoApp.create_todo(@valid_attrs)
      assert todo.archived == true
      assert todo.title == "some title"
    end

    test "create_todo/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = TodoApp.create_todo(@invalid_attrs)
    end

    test "update_todo/2 with valid data updates the todo" do
      todo = todo_fixture()
      assert {:ok, %Todo{} = todo} = TodoApp.update_todo(todo, @update_attrs)
      assert todo.archived == false
      assert todo.title == "some updated title"
    end

    test "update_todo/2 with invalid data returns error changeset" do
      todo = todo_fixture()
      assert {:error, %Ecto.Changeset{}} = TodoApp.update_todo(todo, @invalid_attrs)
      assert todo == TodoApp.get_todo!(todo.id)
    end

    test "delete_todo/1 deletes the todo" do
      todo = todo_fixture()
      assert {:ok, %Todo{}} = TodoApp.delete_todo(todo)
      assert_raise Ecto.NoResultsError, fn -> TodoApp.get_todo!(todo.id) end
    end

    test "change_todo/1 returns a todo changeset" do
      todo = todo_fixture()
      assert %Ecto.Changeset{} = TodoApp.change_todo(todo)
    end
  end
end
