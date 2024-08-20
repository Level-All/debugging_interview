defmodule Blog.Engine.Vote do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "votes" do
    field :value, :integer
    field :comment_id, :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(vote, attrs) do
    vote
    |> cast(attrs, [:value, :comment_id])
    |> validate_required([:value, :comment_id])
    |> foreign_key_constraint(:comment_id)
  end
end
