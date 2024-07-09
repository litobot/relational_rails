# User Story #6

# As a visitor
# When I visit the parent index,
# I see that records are ordered by most recently created first
# And next to each of the records I see when it was created

require "rails_helper"

RSpec.describe "User Story #6 - Sorted Biomes Index", type: :feature do
  describe "When I visit '/biomes/index'" do
    it "Then I see the records are ordered by most recently created first and when it was created" do
      
      # Setup
      biome_1 = Biome.create!(name: "Desert", percentage_of_earth: 33, plentiful_rain: false)
      biome_2 = Biome.create!(name: "Ocean", percentage_of_earth: 70.5, plentiful_rain: true, created_at: 1.minute.ago)
      biome_3 = Biome.create!(name: "Jungle", percentage_of_earth: 12, plentiful_rain: true, created_at: 2.minutes.ago)
    

      # Execution
      visit "/biomes"
      save_and_open_page

      # Assertions

      # name is present
      expect(page).to have_content(biome_1.name)
      expect(page).to have_content(biome_2.name)
      expect(page).to have_content(biome_3.name)
      
      # created_at is present
      expect(page).to have_content(biome_1.created_at.strftime("%B %d, %Y %H:%M"))
      expect(page).to have_content(biome_2.created_at.strftime("%B %d, %Y %H:%M"))
      expect(page).to have_content(biome_3.created_at.strftime("%B %d, %Y %H:%M"))

      # orderly - happy path
      expect("Jungle").to appear_before("Ocean")
      expect("Jungle").to appear_before("Desert")
      expect("Ocean").to appear_before("Desert")
      
      # orderly - sad path
      expect("Desert").to_not appear_before("Ocean")
      expect("Desert").to_not appear_before("Jungle")
      expect("Ocean").to_not appear_before("Jungle")
    end
  end
end