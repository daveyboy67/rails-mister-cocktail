class DosesController < ApplicationController

  def index
    @doses = Doses.all
  end

  def show
    @dose = Dose.find(params[:id])

  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end


  def create
    dose = Dose.new(dose_strong_params)
    dose.cocktail = Cocktail.find(params[:cocktail_id])
    if dose.save
      redirect_to cocktail_path(dose.cocktail)
    else
      render :new
    end
  end



  def destroy
    dose = Dose.find(params[:id])
    cocktail = dose.cocktail
    dose.destroy
    redirect_to cocktail_path(cocktail)
  end



     private

  def dose_strong_params
    params.require(:dose).permit(:description, :ingredient_id)
  end


end
