module Spree
  module Admin
    module RolesHelper
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
