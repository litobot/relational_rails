# User Story 5, Parent Children Index 

# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes
# (data from each column that is on the child table)

require "rails_helper"

RSpec.describe "Biomes's Animal Index", type: :feature do
  describe "As a visitor, when I visit 'biomes/:id/animals (individual biome page)" do
    it "shows all of the animals for each biome" do
      # Setup
      biome_1 = Biome.create!(name: "Desert", percentage_of_earth: 33, plentiful_rain: false)
      biome_2 = Biome.create!(name: "Ocean", percentage_of_earth: 70.5, plentiful_rain: true)
      rattlesnake = biome_1.animals.create!(biome: biome_1, name: "Rattleshake", has_legs: false, number_of_legs: 0, warm_blooded: false)
      sea_otter = biome_2.animals.create!(biome: biome_2, name: "Sea Otter", has_legs: true, number_of_legs: 4, warm_blooded: true)

      # Execution
      visit "/biomes/#{biome_1.id}/animals"
      save_and_open_page

      # Assertion
                                  # Having "Name:" here tests to see if that string is on the page
      expect(page).to have_content("Name: #{rattlesnake.name}") # The interpolation checks to make sure the word "rattlesnake" is on the page
      expect(page).to have_content("Has Legs?: #{rattlesnake.has_legs}")
      expect(page).to have_content("Number of Legs: #{rattlesnake.number_of_legs}")
      expect(page).to have_content("Warm Blooded?: #{rattlesnake.warm_blooded}")
      
      expect(page).to_not have_content("Name: #{sea_otter.name}")
      expect(page).to_not have_content("Has Legs?: #{sea_otter.has_legs}")
      expect(page).to_not have_content("Number of Legs: #{sea_otter.number_of_legs}")
      expect(page).to_not have_content("Warm Blooded?: #{sea_otter.warm_blooded}")
    end
  end
end