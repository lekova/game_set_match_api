class UserAddress < ActiveRecord::Base
  belongs_to :user, inverse_of: :user_addresses
  belongs_to :address, inverse_of: :user_addresses
end
