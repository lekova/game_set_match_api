class Address < ActiveRecord::Base
  has_many :users, through: :user_addresses
  has_many :user_addresses

  validates :zipcode, presence: true
end
