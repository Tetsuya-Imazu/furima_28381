require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
    before do
      @item = FactoryBot.build(:item)
      @item.image = fixture_file_upload('public/images/staff1.png')
    end

    it "全ての項目が入力されていれば商品は保存される" do
      expect(@item).to be_valid
    end

    it "商品名がないと保存できない" do
      @item.name = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end

    it "説明文がないと保存できない" do
      @item.description = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Description can't be blank")
    end

    it "カテゴリーが選択されていないと保存できない" do
      @item.category_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Category is not a number")
    end

    it "商品の状態が選択されていないと保存できない" do
      @item.condition_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Condition is not a number")
    end
    
    it "配送料の負担が選択されていないと保存できない" do
      @item.cost_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Cost is not a number")
    end
    
    it "地域が選択されていないと保存できない" do
      @item.prefecture_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Prefecture is not a number")
    end
    
    it "発送までの日数が選択されていないと保存できない" do
      @item.shipping_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Shipping is not a number")
    end
    
    it "金額が入力されていないと保存できない" do
      @item.price = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
  end
end
