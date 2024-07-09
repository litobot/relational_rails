class BiomeAnimalsController < ApplicationController
  def index
    biome = Biome.find(params[:biome_id])
    # We use an instance variable here so that we can pass that infomation
      # from the Model through the Controller to the View
        ### Remember the `has_many`/`belongs_to` associations
          # give us mini methods like attr_readers
            # Which allows us to use dot notation here
    @animals = biome.animals
  end
end