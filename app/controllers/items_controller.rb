class ItemsController < ApplicationController
  def new
    @item = Item.new
    if params[:hero_id]
      @hero = Hero.find(params[:hero_id])
    end
  end

  def create
    @item = Item.new(items_params)
    @item.save
    if params[:hero_id]
      @hero = Hero.find(params[:hero_id])
      @hero.items << @item
      redirect_to hero_path(@hero)
    else
      redirect_to heros_path
    end
  end

  private

  def items_params
    params.require(:item).permit(:name, :description)
  end
end
