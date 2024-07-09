# User Story 7, Parent Child Count

# As a visitor
# When I visit a parent's show page
# I see a count of the number of children associated with this parent

require "rails_helper"

RSpec.describe "User Story #7 - Count Animals on Biome Pages", type: :feature do
  describe "As a visitor, when I visit a biome show page" do
    it "Then I see a count of how many animals are associated with that biome" do
      
      biome_1 = Biome.create!(name: "Desert", percentage_of_earth: 33, plentiful_rain: false)
      biome_2 = Biome.create!(name: "Ocean", percentage_of_earth: 70.5, plentiful_rain: true, created_at: 1.minutes.ago)

      animal_1 = Animal.create!(biome: biome_1, name: "Rattleshake", has_legs: false, number_of_legs: 0, warm_blooded: false)
      animal_2 = Animal.create!(biome: biome_1, name: "Coyote", has_legs: true, number_of_legs: 4, warm_blooded: true)
      animal_3 = Animal.create!(biome: biome_2, name: "Sea Otter", has_legs: true, number_of_legs: 4, warm_blooded: true)
      animal_4 = Animal.create!(biome: biome_2, name: "Whale", has_legs: false, number_of_legs: 0, warm_blooded: true)
      animal_5 = Animal.create!(biome: biome_2, name: "Shark", has_legs: false, number_of_legs: 0, warm_blooded: false)

      # binding.pry

      visit "/biomes/#{biome_2.id}"
      save_and_open_page

      # We are going to use ERB to set the number of Animals appearing on the Biome page to a variable.
        # This will occur in the biomes#show
      expect(page).to have_content("Number of Animals: 3")
    end
  end
end