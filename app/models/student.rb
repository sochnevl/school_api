class Student < ApplicationRecord
  belongs_to :school_class

  validates :first_name, :last_name, :surname, presence: true
end
