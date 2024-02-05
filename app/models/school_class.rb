class SchoolClass < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :number, :letter, :students_count, presence: true
  validates :students_count, numericality: { greater_than_or_equal_to: 0 }
end
