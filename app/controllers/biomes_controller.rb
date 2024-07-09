class BiomesController < ApplicationController
  def index
    # We pass data to the View via instance @variables
    # This allows us to see our instances in the View
    @biomes = Biome.order_by_created_at
  end

  def show
    @biome = Biome.find(params[:id])
  end
end