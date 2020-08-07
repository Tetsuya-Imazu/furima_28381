FactoryBot.define do
  factory :item do
    name { "テストあいてむ" }
    description { "テスト説明文です" }
    category_id { 6 }
    condition_id { 4 }
    cost_id { 2 }
    prefecture_id { 15 }
    shipping_id { 4 }
    price { 10000 }
    association :user
  end
end
