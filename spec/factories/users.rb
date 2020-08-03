FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    confirmation_password {password}
    family_name {Faker::Name.first_name}
    first_name {Faker::Name.last_name}
    family_name_kana {Faker::Name.first_name}
    first_name_kana {Faker::Name.last_name}
    birth_day {Faker::Date.between(from: '2014-09-23', to: '2014-09-25')}
  end
end
