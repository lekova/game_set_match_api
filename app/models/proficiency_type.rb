class ProficiencyType < ActiveRecord::Base
  has_many :users, through: :user_proficiency_types
  has_many :user_proficiency_types, dependent: :destroy

  validates :name, presence: true
end
