class ItemsController < ApplicationController
  before_action :find_item, only: [:edit, :update, :destroy]

  def index
    @search = ItemSearch.new(params[:search])
    @items = @search.scope
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)

    if @item.save
      redirect_to root_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render 'new'
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  def delete_all
    Item.delete_all
  end

  private

  def item_params
    params.require(:item).permit(:category, :price, :dob)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
