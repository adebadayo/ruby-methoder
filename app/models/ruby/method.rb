class Ruby::Method < ApplicationRecord
  belongs_to :ruby_class, :class_name => 'Ruby::Class'
end
