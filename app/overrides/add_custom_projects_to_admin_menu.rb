Deface::Override.new(
    :original => '30e04e20633b85d74dcb22f781487425611b22b1',
    :virtual_path => 'spree/layouts/admin',
    :name => 'add_custom_projects_to_admin_menu',
    :insert_bottom => '[data-hook="admin_tabs"]',
    :text => '<ul class="nav nav-sidebar">
        <%= tab Spree.t(:custom_projects), :url => admin_custom_projects_path, :icon => \'heart-empty\' %>
      </ul>'
)
