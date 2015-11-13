Deface::Override.new(
    :original => 'b511780df47e0ebcdfe1aeb87c0143df8d2f4985',
    :virtual_path => 'spree/layouts/admin',
    :name => 'add_custom_projects_to_admin_menu',
    :insert_bottom => '[data-hook="admin_tabs"]',
    :text => '<ul class="nav nav-sidebar">
        <%= tab Spree.t(:custom_projects), :url => admin_custom_projects_path, :icon => \'heart-empty\' %>
      </ul>'
)
