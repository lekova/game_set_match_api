class UserRegisteredSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :age, :gender, :about_me, :image, :current_proficiency_type, :token
  # , :all_time_proficiency_types

  def current_proficiency_type
    # returns last proficiency_type for current user
    object.proficiency_types.last.name
  end
end
