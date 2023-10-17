class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, :verify_authenticity_token, only: :index

  def index
    @items = Item.all
  end

  def show
    @wallet = Wallet.find(params[:wallet_id])
    @item = Item.find(params[:id])
  end

  def category
    @category = ['食費', '衣服', '日用品', '美容', '交通', '光熱', '通信', '娯楽', '医療', '他']
  end

  def new
    @wallet = Wallet.find(params[:wallet_id])
    @item = Item.new
    # @category_options = Item.all.map { |i| [ i.category, i.id] }
  end

  def create
    @wallet = Wallet.find(params[:wallet_id])
    @item = Item.new(item_params)
    @item.wallet = @wallet
    if @item.save

      redirect_to wallet_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to wallet_path, status: :see_other
  end

  def cost
    @item = Item.find(params[:id])
    @item_cost = @item.cost
  end

  private

  def wallet_params
    params.require(:wallet).permit(:budget, :id)
  end

  def item_params
    params.require(:item).permit(:title, :category, :cost, :spent_date, :wallet_id)
  end
end
