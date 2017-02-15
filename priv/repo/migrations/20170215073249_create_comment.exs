defmodule YtCommentService.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :user_id, :string
      add :message, :text
      add :trip_id, :string

      timestamps()
    end

  end
end
