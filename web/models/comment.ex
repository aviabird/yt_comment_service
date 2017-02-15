defmodule YtCommentService.Comment do
  use YtCommentService.Web, :model

  schema "comments" do
    field :user_id, :string
    field :message, :string
    field :trip_id, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:user_id, :message, :trip_id])
    |> validate_required([:user_id, :message, :trip_id])
  end
end
