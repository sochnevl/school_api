class Student < ApplicationRecord
  belongs_to :class_group

  validates :first_name, :last_name, :surname, presence: true
end
