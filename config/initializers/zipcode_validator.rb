class ZipcodeValidator < ActiveModel::EachValidator
  def validate_each(record, attr_name, value)
    unless ::Zipcode.where(:id => value).exists?
      record.errors.add(attr_name, :zipcode, options.merge(:value => value))
    end
  end
end

# This allows us to assign the validator in the model
module ActiveModel::Validations::HelperMethods
  def validates_zipcode(*attr_names)
    validates_with ZipcodeValidator, _merge_attributes(attr_names)
  end
end
