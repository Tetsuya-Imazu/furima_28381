class CreateItempurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :itempurchases do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.string :post_code, null: false
      t.integer :prefecture_id, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :building
      t.string :phone_number, null: false
      t.string :token, null: false
      t.timestamps
    end
  end
end
