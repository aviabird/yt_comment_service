defmodule YtCommentService.CommentTest do
  use YtCommentService.ModelCase

  alias YtCommentService.Comment

  @valid_attrs %{message: "some content", trip_id: "some content", user_id: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Comment.changeset(%Comment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Comment.changeset(%Comment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
