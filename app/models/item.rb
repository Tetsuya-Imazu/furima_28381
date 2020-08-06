class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :cost
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :shipping

  # belongs_to :user
  # has_one :shipping
  # has_one :item_purchase

  with_options presence: true do
    validates :name
    validates :description
    validates :category_id
    validates :condition_id
    validates :cost_id
    validates :prefecture_id
    validates :shipping_id
    validates :price
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :condition_id
    validates :cost_id
    validates :prefecture_id
    validates :shipping_id
  end
end
