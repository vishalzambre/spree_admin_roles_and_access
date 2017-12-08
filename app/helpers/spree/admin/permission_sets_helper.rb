module Spree
  module Admin
    module PermissionSetsHelper
      def select_options_for_permissions(permissions, selected_permissions)
        mapped_permissions = permissions.map do |permission|
          [
            permission.title,
            permission.id
          ]
        end
        options_for_select(mapped_permissions, selected_permissions)
      end

      def select_options_for_permission_sets(permission_sets, selected_permission_sets)
        mapped_permission_sets = permission_sets.map do |permission_set|
          [
            permission_set.name,
            permission_set.id
          ]
        end
        options_for_select(mapped_permission_sets, selected_permission_sets)
      end
    end
  end
end
