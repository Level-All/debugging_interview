defmodule BlogWeb.PageController do
  use BlogWeb, :controller

  alias Blog.Engine
  alias Blog.Engine.Comment

  def home(conn, _params) do
    posts = Engine.list_posts()
    render(conn, :home, layout: false, page_title: "Home", posts: posts)
  end

  def post(conn, %{"post_id" => id}) do
    post = Engine.get_post_with_comments!(id)
    changeset = Engine.change_comment(%Comment{})
    render(conn, :post, layout: false, page_title: post.title, post: post, changeset: changeset)
  end

  def create_comment(conn, %{"comment" => comment_params, "post_id" => post_id}) do
    comment_params = Map.put(comment_params, "post_id", post_id)

    case Engine.create_comment(comment_params) do
      {:ok, comment} ->
        conn
        |> redirect(to: ~p"/posts/#{comment.post_id}")

      {:error, %Ecto.Changeset{} = changeset} ->
        post = Engine.get_post_with_comments!(post_id)

        render(conn, :post,
          layout: false,
          changeset: changeset,
          page_title: post.title,
          post: post
        )
    end
  end

  def vote(conn, %{"comment_id" => comment_id, "direction" => direction}) do
    vote_params = %{
      comment_id: comment_id,
      value: (direction == "up" && 1) || -1
    }

    case Engine.create_vote(vote_params) do
      {:ok, vote} ->
        comment = Blog.Engine.get_comment!(vote.comment_id)

        conn
        |> redirect(to: ~p"/posts/#{comment.post_id}")
    end
  end
end
