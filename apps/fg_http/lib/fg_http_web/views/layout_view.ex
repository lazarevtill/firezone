defmodule FgHttpWeb.LayoutView do
  use FgHttpWeb, :view

  def render_flash(conn) do
    ~E"""
    <section id="flash">
      <%= if get_flash(conn, :info) do %>
        <div id="flash-info">
          <%= get_flash(conn, :info) %>
        </div>
      <% end %>
      <%= if get_flash(conn, :error) do %>
        <div id="flash-error">
          <%= get_flash(conn, :error) %>
        </div>
      <% end %>
    </section>
    """
  end
end