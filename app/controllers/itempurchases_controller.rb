class ItempurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:index, :create]

  def index
  end

  def create
    @itempurchase = Itempurchase.new(itempurchase_params)
    if @itempurchase.valid?
      pay_item
      @item.sold_out = true
      @item.save
      @itempurchase.save
      redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @item.price,
      card: itempurchase_params[:token],
      currency:'jpy'
    )
  end
  
  def itempurchase_params
    params.permit(
      :post_code, :prefecture_id, :city, :address, :building, :phone_number, :item_id, :token
    ).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
  
end

