defmodule SupabaseSurfaceSiteWeb.PageLive do
  use SupabaseSurfaceSiteWeb, :surface_view

  alias Surface.Components.Link

  @impl true
  def render(assigns) do
    ~H"""
    <main class="container mx-auto lg:max-w-4xl">
      <div class="my-20">
        <Link to="/catalogue" class="text-brand-800 focus:text-brand-900 hover:underline">Take me to the component docs</Link>
      </div>
    </main>
    """
  end
end
