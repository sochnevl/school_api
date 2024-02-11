FactoryBot.define do
  factory :student do
    class_group
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    surname { Faker::Name.middle_name }
    class_group_id { instance.class_group.id }
    token { SecureRandom.uuid }
  end
end
