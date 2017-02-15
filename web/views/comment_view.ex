defmodule YtCommentService.CommentView do
  use YtCommentService.Web, :view

  def render("index.json", %{comments: comments}) do
    %{data: render_many(comments, YtCommentService.CommentView, "comment.json")}
  end

  def render("show.json", %{comment: comment}) do
    %{data: render_one(comment, YtCommentService.CommentView, "comment.json")}
  end

  def render("comment.json", %{comment: comment}) do
    %{id: comment.id,
      user_id: comment.user_id,
      message: comment.message,
      trip_id: comment.trip_id,
      inserted_at: comment.inserted_at}
  end
end
