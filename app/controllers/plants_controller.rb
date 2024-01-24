class PlantsController < ApplicationController
  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to @garden, notice: "Plant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
