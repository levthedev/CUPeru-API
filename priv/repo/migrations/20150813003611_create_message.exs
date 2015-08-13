defmodule RestApi.Repo.Migrations.CreateMessage do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :to, :string
      add :from, :string
      add :body, :string

      timestamps
    end

  end
end
