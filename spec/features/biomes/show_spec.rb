require "rails_helper"

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

RSpec.describe "Biomes Show Page", type: :feature do
  describe "When I visit 'biomes/:id" do
    it "Then I see the biome with that id including the biome's attributes" do
      # Setup
      biome_1 = Biome.create!(name: "Desert", percentage_of_earth: 33, plentiful_rain: false)
      biome_2 = Biome.create!(name: "Ocean", percentage_of_earth: 70.5, plentiful_rain: true)
      # Need to add attributes
      
      # Execution
      visit "/biomes/#{biome_1.id}"
      
      # Assertion
      expect(page).to have_content("Name: #{biome_1.name}")
      expect(page).to have_content("Percentage of Earth Covered: #{biome_1.percentage_of_earth}")
      expect(page).to have_content("Plentiful Rain: #{biome_1.plentiful_rain}")

      expect(page).to_not have_content("Name: #{biome_2.name}")
      expect(page).to_not have_content("Percentage of Earth Covered: #{biome_2.percentage_of_earth}")
      expect(page).to_not have_content("Plentiful Rain: #{biome_2.plentiful_rain}")
    end

  end
end