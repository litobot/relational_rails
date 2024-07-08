require "rails_helper"

# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)

RSpec.describe "Animals Index Page", type: :feature do
  describe "As a visitor - when I visit '/animals'" do
    it "Then I see an Animal in the system including the Animal's attributes" do
      # Setup
      biome_1 = Biome.create!(name: "Desert", percentage_of_earth: 33, plentiful_rain: false)
      biome_2 = Biome.create!(name: "Ocean", percentage_of_earth: 70.5, plentiful_rain: true)
      animal_1 = Animal.create!(biome: biome_1, name: "Rattleshake", has_legs: false, number_of_legs: 0, warm_blooded: false)
      animal_2 = Animal.create!(biome: biome_2, name: "Sea Otter", has_legs: true, number_of_legs: 4, warm_blooded: true)

      # Execution
      visit "/animals"
      # save_and_open_page

      # Assertion
      expect(page).to have_content("Name: #{animal_1.name}")
      expect(page).to have_content("Has Legs?: #{animal_1.has_legs}")
      expect(page).to have_content("Number of Legs: #{animal_1.number_of_legs}")
      expect(page).to have_content("Warm Blooded?: #{animal_1.warm_blooded}")
      
      expect(page).to have_content("Name: #{animal_2.name}")
      expect(page).to have_content("Has Legs?: #{animal_2.has_legs}")
      expect(page).to have_content("Number of Legs: #{animal_2.number_of_legs}")
      expect(page).to have_content("Warm Blooded?: #{animal_2.warm_blooded}")
    end
  end
end