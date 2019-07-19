# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TodoAppApi.Repo.insert!(%TodoAppApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "美里と旅行に行く"})
TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "美里とご飯を食べる"})
TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "美里と一緒に寝る"})
TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "美里とダラダラする"})
TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "美里と散歩する"})
