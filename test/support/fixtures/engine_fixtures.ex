defmodule Blog.EngineFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Blog.Engine` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content",
        title: "some title"
      })
      |> Blog.Engine.create_post()

    post
  end

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        content: "some content"
      })
      |> Blog.Engine.create_comment()

    comment
  end

  @doc """
  Generate a vote.
  """
  def vote_fixture(attrs \\ %{}) do
    {:ok, vote} =
      attrs
      |> Enum.into(%{
        value: 1,
        comment_id: Map.get(attrs, :comment_id, nil)
      })
      |> Blog.Engine.create_vote()

    vote
  end
end
