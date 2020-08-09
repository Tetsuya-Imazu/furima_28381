class ItempurchasesController < ApplicationController
  before_action :authenticate_user!

  def index
    @item = Item.find(params[:item_id])
  end

  def create
    @itempurchase = Itempurchase.new(itempurchase_params)
    if @itempurchase.valid?
      @pay_item
      @itempurchase.save
      redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def itempurchase_params
    params.permit(:post_code, :prefecture_id, :city, :address, :building, :phone_number, :item_id, :token).merge(user_id: current_user.id)
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
     amount: @item.price,
     card: itempurchase_params[:token],
     currency:'jpy'
   )
  end
end
