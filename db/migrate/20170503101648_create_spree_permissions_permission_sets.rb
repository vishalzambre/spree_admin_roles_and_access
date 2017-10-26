class CreateSpreePermissionsPermissionSets < ActiveRecord::Migration
  def change
    create_table :spree_permissions_permission_sets do |t|
      t.references :permission, index: true
      t.references :permission_set, index: true
    end

    add_foreign_key :spree_permissions_permission_sets, :spree_permissions, column: :permission_id
    add_foreign_key :spree_permissions_permission_sets, :spree_permission_sets, column: :permission_set_id
  end
end
