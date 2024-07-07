class BiomesController < ApplicationController
  def index
    # We pass data to the View via instance @variables
    # This allows us to see our instances in the View
    @biomes = Biome.all 
  end

  def show
    @biome = Biome.find(params[:id])
  end
end