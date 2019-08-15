class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show]
  def index
    # we need @restaurant in our `simple_form_for`
    @cocktails = Cocktail.all
  end


  def new
    @cocktail = Cocktail.new
  end


  def show
      @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    else
      render :new
    end

  end

 # A user can see the list of cocktails
 # A user can see the details of a given cocktail, with the dose needed for each ingredient
 # A user can create a new cocktail

 private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
