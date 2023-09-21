class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def category
    @category = ['食費', '衣服', '日用品', '美容', '交通', '光熱', '通信', '娯楽', '医療', '他']
  end

  def new
    @item = Item.new
    @category_options = Item.all.map { |i| [ i.category, i.id] }
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item)
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
    redirect_to tasks_path, status: :see_other
  end

  private

  def item_params
    params.require(:item).permit(:title, :category, :cost, :spent_date)
  end
end
