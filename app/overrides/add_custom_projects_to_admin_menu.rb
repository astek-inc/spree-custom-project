Deface::Override.new(
    original: '4afaf76e759952bb4b5ca9c5718c8712da432442',
    virtual_path: 'spree/layouts/admin',
    name: 'add_custom_projects_to_admin_menu',
    insert_bottom: '[data-hook="admin_tabs"]',
    text: '<ul class="nav nav-sidebar">
        <%= tab Spree.t(:custom_projects), url: admin_custom_projects_path, icon: \'heart-empty\' %>
      </ul>'
)
