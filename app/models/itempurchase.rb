class Itempurchase < ApplicationRecord
  belongs_to :item
  belongs_to :user

  with_options presence: true do
    validates :post_code
    validates :city
    validates :address
    validates :phone_number
    validates :token
  end

  validates :prefecture_id, numericality: { other_than: 1 }

end
