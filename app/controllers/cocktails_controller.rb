class CocktailsController < ApplicationController
  def new
    @cocktail = Cocktail.new
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to cocktail_path(@cocktail)
    else
      render :edit
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    # @cocktail = Cocktail.find(params[:cocktail_id])
    # @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail.destroy
    redirect_to cocktails_path
  end
  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
