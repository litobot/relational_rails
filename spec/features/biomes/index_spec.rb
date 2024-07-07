require "rails_helper"

# User Story 1, Parent Index

# For each parent (biome) table
# As a visitor
# When I visit '/biomes'
# Then I see the name of each biome record in the system


RSpec.describe "Biomes Index Page", type: :feature do
  describe "As a visitor - when I visit '/biomes'" do
    it "Then I see the name of each parent record in the system" do
      # Setup
      biome_1 = Biome.create!(name: "Biome 1")
      biome_2 = Biome.create!(name: "Biome 2")
      
      # Execution
      visit "/biomes"

      # Assertion
      expect(page).to have_content("Biome 1")
      expect(page).to have_content("Biome 2")
    end
  end
end
