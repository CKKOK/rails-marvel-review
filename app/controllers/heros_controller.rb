class HerosController < ApplicationController
  def index
    @heros = Hero.all
  end

  def show
    @hero = Hero.find(params[:id])
    @items = @hero.items
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    @hero.save
    redirect_to hero_path(@hero)
  end

  def edit
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])
    @hero.update(hero_params)
    redirect_to hero_path(@hero)
  end

  def delete
    @hero = Hero.find(params[:id])
    @hero.destroy
    redirect_to heros_path
  end

  private

  def hero_params
    params.require(:hero).permit(:name)
  end
end