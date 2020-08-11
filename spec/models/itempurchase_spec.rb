require 'rails_helper'

RSpec.describe Itempurchase, type: :model do
  describe '#create' do
    before do
      @itempurchase = FactoryBot.build(:itempurchase)
    end

    it '全ての項目が正しく入力されていれば保存できる' do
      expect(@itempurchase).to be_valid
    end

    it 'post_codeが空だと保存できない' do
      @itempurchase.post_code = nil
      @itempurchase.valid?
      expect(@itempurchase.errors.full_messages).to include("Post code can't be blank")
    end

    it 'prefecture_idが選択されていないと保存できない' do
      @itempurchase.prefecture_id = nil
      @itempurchase.valid?
      expect(@itempurchase.errors.full_messages).to include("Prefecture is not a number")
    end

    it 'cityが空だと保存できない' do
      @itempurchase.city = nil
      @itempurchase.valid?
      expect(@itempurchase.errors.full_messages).to include("City can't be blank")
    end

    it 'addressが空だと保存できない' do
      @itempurchase.address = nil
      @itempurchase.valid?
      expect(@itempurchase.errors.full_messages).to include("Address can't be blank")
    end

    it 'phone_numberが空だと保存できない' do
      @itempurchase.phone_number = nil
      @itempurchase.valid?
      expect(@itempurchase.errors.full_messages).to include("Phone number can't be blank")
    end
    
    it 'tokenが空では保存できない' do
      @itempurchase.token = nil
      @itempurchase.valid?
      expect(@itempurchase.errors.full_messages).to include("Token can't be blank")
    end
  end
end
