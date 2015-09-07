class UserProficiencyType < ActiveRecord::Base
  belongs_to :user, inverse_of: :user_proficiency_types
  belongs_to :proficiency_type, inverse_of: :user_proficiency_types
end
