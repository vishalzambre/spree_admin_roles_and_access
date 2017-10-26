module Spree
  class ReturnAuthorizationReason < Spree::Base
    include Spree::NamedType
    self.table_name = 'spree_return_authorization_reasons'

    has_many :return_authorizations, dependent: :restrict_with_error
  end
end
