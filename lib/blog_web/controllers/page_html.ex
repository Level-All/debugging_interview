defmodule BlogWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use BlogWeb, :html

  embed_templates "page_html/*"

  @doc """
  Renders a comment form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def comment_form(assigns)

  @doc """
  Renders a comment count.
  """
  attr :comments, :list, required: true

  def comments_count(assigns) do
    ~H"""
    <h2 class="text-lg -mb-14">Comments (<%= length(@comments) - 1 %>)</h2>
    """
  end

  @doc """
  Renders a vote button.
  """
  attr :comment, :map, required: true
  attr :direction, :string, required: true

  def vote_button(assigns) do
    ~H"""
    <.simple_form
      for={Blog.Engine.change_vote(%Blog.Engine.Vote{comment_id: @comment.id})}
      action={~p"/comments/#{@direction}/#{@comment.id}"}
      class="!mt-0"
    >
      <button type="submit">
        <.icon
          name={"hero-arrow-#{@direction}-circle-solid"}
          class={"h-6 w-6 text-slate-400 transition-colors duration-300 #{if @direction == "up", do: "hover:text-green-400", else: "hover:text-red-400"}"}
        />
      </button>
    </.simple_form>
    """
  end

  @doc """
  Renders the comment score.
  """
  attr :comment, :map, required: true

  def comment_score(assigns) do
    value =
      assigns.comment.votes
      |> Enum.map(& &1.value)
      |> Enum.map(&(-1 * &1))
      |> Enum.sum()

    assigns = assign(assigns, :value, value)

    ~H"""
    <div><%= @value %></div>
    """
  end
end
