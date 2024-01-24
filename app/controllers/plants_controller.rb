class PlantsController < ApplicationController
  def create
    @plant = Plant.new(review_params)
  end

  private
  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
§
