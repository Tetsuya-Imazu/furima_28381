class Item < ApplicationRecord
  belongs_to :user
  has_one :shipping
  has_one :item_purchase

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  with_options presence: true do
    validates :name
    validates :decription
    validates :category_id
    validates :condition_id
    validates :cost_id
    validates :prefecture_id
    validates :shipping_id
    validates :price
  end

  # validates :category_id, numericality: { other_than: 1 }
  # validates :condition_id, numericality: { other_than: 1 }
  # validates :cost_id, numericality: { other_than: 1 }
  # validates :prefecture_id, numericality: { other_than: 1 }
  # validates :shipping_id, numericality: { other_than: 1 }

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :condition_id
    validates :cost_id
    validates :prefecture_id
    validates :shipping_id
  end
end
