class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: 'Cocktail was successfully created.'
      # or redirect_to cocktail_path(@cocktail)
    else
      # @cocktails = Cocktail.all
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path, notice: 'Cocktail was successfully deleted'

  end

 # A user can see the list of cocktails
 # A user can see the details of a given cocktail, with the dose needed for each ingredient
 # A user can create a new cocktail

 private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end
end
