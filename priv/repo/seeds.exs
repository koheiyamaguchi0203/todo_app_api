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

TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "旅行に行く"})
TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "ご飯を食べる"})
TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "寝る"})
TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "ダラダラする"})
TodoAppApi.Repo.insert!(%TodoAppApi.TodoApp.Todo{archived: false, title: "散歩する"})
