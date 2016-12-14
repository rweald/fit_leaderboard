defmodule FitLeaderboard.Repo.Migrations.CreatePeople do
  use Ecto.Migration

  def change do
    create table(:people) do
      add :slack_username, :string
      add :first_name, :string
      add :last_name, :string
    end

  end
end
