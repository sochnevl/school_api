# == Schema Information
#
# Table name: class_groups
#
#  id             :bigint           not null, primary key
#  number         :integer          not null
#  letter         :string           not null
#  students_count :integer          not null
#  school_id      :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class ClassGroup < ApplicationRecord
  belongs_to :school

  has_many :students, dependent: :destroy

  validates :number, :letter, :students_count, presence: true
  validates :students_count, numericality: { greater_than_or_equal_to: 0 }
end
