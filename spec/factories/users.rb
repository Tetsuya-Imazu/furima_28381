FactoryBot.define do
  factory :user do
    nickname {"テストたろう"}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    confirmation_password {password}
    family_name {"山田"}
    first_name {"太郎"}
    family_name_kana {"ヤマダ"}
    first_name_kana {"タロウ"}
    birth_day {Faker::Date.between(from: '2014-09-23', to: '2014-09-25')}
  end
end
