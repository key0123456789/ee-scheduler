class Method < ApplicationRecord
  belongs_to :choise
  has_many :wishes
  accepts_nested_attributes_for :wishes, allow_destroy: true
end
