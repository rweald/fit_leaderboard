defmodule FitLeaderboard.Person do
  use Ecto.Schema
  import Ecto.Changeset

  schema "people" do
    field :first_name, :string
    field :last_name, :string
    field :slack_username, :string
  end

  def new_user_changeset(params \\ %{}) do
    %FitLeaderboard.Person{}
    |> cast(params, [:slack_username, :first_name, :last_name])
    |> validate_required([:slack_username, :first_name, :last_name])
    |> unique_constraint(:slack_username)
  end

end
