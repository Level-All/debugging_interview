defmodule Blog.EngineTest do
  use Blog.DataCase

  alias Blog.Engine

  describe "posts" do
    alias Blog.Engine.Post

    import Blog.EngineFixtures

    @invalid_attrs %{title: nil, content: nil}

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert Engine.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Engine.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{title: "some title", content: "some content"}

      assert {:ok, %Post{} = post} = Engine.create_post(valid_attrs)
      assert post.title == "some title"
      assert post.content == "some content"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Engine.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{title: "some updated title", content: "some updated content"}

      assert {:ok, %Post{} = post} = Engine.update_post(post, update_attrs)
      assert post.title == "some updated title"
      assert post.content == "some updated content"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Engine.update_post(post, @invalid_attrs)
      assert post == Engine.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Engine.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Engine.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Engine.change_post(post)
    end
  end

  describe "comments" do
    alias Blog.Engine.Comment

    import Blog.EngineFixtures

    @invalid_attrs %{content: nil}

    test "list_comments/0 returns all comments" do
      comment = comment_fixture()
      assert Engine.list_comments() == [comment]
    end

    test "get_comment!/1 returns the comment with given id" do
      comment = comment_fixture()
      assert Engine.get_comment!(comment.id) == comment
    end

    test "create_comment/1 with valid data creates a comment" do
      valid_attrs = %{content: "some content"}

      assert {:ok, %Comment{} = comment} = Engine.create_comment(valid_attrs)
      assert comment.content == "some content"
    end

    test "create_comment/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Engine.create_comment(@invalid_attrs)
    end

    test "update_comment/2 with valid data updates the comment" do
      comment = comment_fixture()
      update_attrs = %{content: "some updated content"}

      assert {:ok, %Comment{} = comment} = Engine.update_comment(comment, update_attrs)
      assert comment.content == "some updated content"
    end

    test "update_comment/2 with invalid data returns error changeset" do
      comment = comment_fixture()
      assert {:error, %Ecto.Changeset{}} = Engine.update_comment(comment, @invalid_attrs)
      assert comment == Engine.get_comment!(comment.id)
    end

    test "delete_comment/1 deletes the comment" do
      comment = comment_fixture()
      assert {:ok, %Comment{}} = Engine.delete_comment(comment)
      assert_raise Ecto.NoResultsError, fn -> Engine.get_comment!(comment.id) end
    end

    test "change_comment/1 returns a comment changeset" do
      comment = comment_fixture()
      assert %Ecto.Changeset{} = Engine.change_comment(comment)
    end
  end

  describe "votes" do
    alias Blog.Engine.Vote

    import Blog.EngineFixtures

    @invalid_attrs %{value: nil, comment_id: nil}

    setup do
      post = post_fixture()
      comment = comment_fixture(%{post_id: post.id})

      {:ok, %{comment: comment}}
    end

    test "list_votes/0 returns all votes", %{comment: comment} do
      vote = vote_fixture(%{comment_id: comment.id})
      assert Engine.list_votes() == [vote]
    end

    test "get_vote!/1 returns the vote with given id", %{comment: comment} do
      vote = vote_fixture(%{comment_id: comment.id})
      assert Engine.get_vote!(vote.id) == vote
    end

    test "create_vote/1 with valid data creates a vote", %{comment: comment} do
      valid_attrs = %{value: 42, comment_id: comment.id}

      assert {:ok, %Vote{} = vote} = Engine.create_vote(valid_attrs)
      assert vote.value == 42
    end

    test "create_vote/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Engine.create_vote(@invalid_attrs)
    end

    test "update_vote/2 with valid data updates the vote", %{comment: comment} do
      vote = vote_fixture(%{comment_id: comment.id})
      update_attrs = %{value: 43}

      assert {:ok, %Vote{} = vote} = Engine.update_vote(vote, update_attrs)
      assert vote.value == 43
    end

    test "update_vote/2 with invalid data returns error changeset", %{comment: comment} do
      vote = vote_fixture(%{comment_id: comment.id})
      assert {:error, %Ecto.Changeset{}} = Engine.update_vote(vote, @invalid_attrs)
      assert vote == Engine.get_vote!(vote.id)
    end

    test "delete_vote/1 deletes the vote", %{comment: comment} do
      vote = vote_fixture(%{comment_id: comment.id})
      assert {:ok, %Vote{}} = Engine.delete_vote(vote)
      assert_raise Ecto.NoResultsError, fn -> Engine.get_vote!(vote.id) end
    end

    test "change_vote/1 returns a vote changeset", %{comment: comment} do
      vote = vote_fixture(%{comment_id: comment.id})
      assert %Ecto.Changeset{} = Engine.change_vote(vote)
    end
  end
end
