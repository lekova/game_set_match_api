class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :age, :gender, :about_me, :image, :current_proficiency_type
  # , :all_time_proficiency_types
  has_many :addresses
  has_many :proficiency_types

  def current_proficiency_type
    # returns last proficiency_type for current user
    object.proficiency_types.last.name
  end

  # def all_time_proficiency_types
  #   # returns all levels over time for current user
  #   object.proficiency_types
  # end
end
