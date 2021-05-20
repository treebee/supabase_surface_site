defmodule SupabaseSurfaceSiteWeb.HomeView do
  use SupabaseSurfaceSiteWeb, :surface_view

  @impl true
  def render(assigns) do
    ~H"""
    <a href="/">Take me back</a>
    """
  end
end
