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
FactoryBot.define do
  factory :class_group do
    school
    number { Faker::Number.rand(11) }
    letter { 'А' }
    school_id { instance.school.id }
    students_count { Faker::Number.rand(30) }
  end
end
