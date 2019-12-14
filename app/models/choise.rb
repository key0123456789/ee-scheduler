class Choise < ApplicationRecord
  has_many :methods
  accepts_nested_attributes_for :methods, allow_destroy: true
end
