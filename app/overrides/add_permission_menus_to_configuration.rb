Deface::Override.new(
  virtual_path: 'spree/admin/shared/_configuration_menu',
  name: 'permissions',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<%= configurations_sidebar_menu_item(Spree.t(:permissions), spree.admin_permissions_path) if can? :manage, Spree::Permission %>
'
)

Deface::Override.new(
  virtual_path: 'spree/admin/shared/_configuration_menu',
  name: 'permission_sets',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<%= configurations_sidebar_menu_item(Spree.t(:permission_sets), spree.admin_permission_sets_path) if can? :manage, Spree::PermissionSet %>
'
)
