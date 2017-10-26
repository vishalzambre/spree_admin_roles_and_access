class CreateSpreeRolesPermissionSets < ActiveRecord::Migration
  def change
    create_table :spree_roles_permission_sets do |t|
      t.references :role, index: true
      t.references :permission_set, index: true
    end

    add_foreign_key :spree_roles_permission_sets, :spree_roles, column: :role_id
    add_foreign_key :spree_roles_permission_sets, :spree_permission_sets, column: :permission_set_id
  end
end
