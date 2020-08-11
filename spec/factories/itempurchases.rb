FactoryBot.define do
  factory :itempurchase do
    post_code { '123-4567' }
    prefecture_id { 5 }
    city { '八尾市' }
    address { '教興寺1-113' }
    building { 'スカイオ' }
    phone_number { '09012345678' }
    token { 'tok_abcdefghijklmnop1234567890' }
    association :user
    association :item
  end
end
