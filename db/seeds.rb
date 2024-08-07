# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Do destroy command for Biomes
# Do destroy command for Animals

biome_1 = Biome.create!(name: "Desert", percentage_of_earth: 33, plentiful_rain: false)
biome_2 = Biome.create!(name: "Ocean", percentage_of_earth: 70.5, plentiful_rain: true, created_at: 1.minutes.ago)
biome_3 = Biome.create!(name: "Jungle", percentage_of_earth: 12, plentiful_rain: true, created_at: 2.minutes.ago)


animal_1 = Animal.create!(biome: biome_1, name: "Rattleshake", has_legs: false, number_of_legs: 0, warm_blooded: false)
animal_2 = Animal.create!(biome: biome_1, name: "Coyote", has_legs: true, number_of_legs: 4, warm_blooded: true)
animal_3 = Animal.create!(biome: biome_2, name: "Sea Otter", has_legs: true, number_of_legs: 4, warm_blooded: true)
animal_4 = Animal.create!(biome: biome_2, name: "Whale", has_legs: false, number_of_legs: 0, warm_blooded: true)
animal_5 = Animal.create!(biome: biome_2, name: "Shark", has_legs: false, number_of_legs: 0, warm_blooded: false)
animal_6 = Animal.create!(biome: biome_3, name: "Monkey", has_legs: true, number_of_legs: 4, warm_blooded: true)
animal_7 = Animal.create!(biome: biome_3, name: "Frog", has_legs: true, number_of_legs: 4, warm_blooded: false)
animal_8 = Animal.create!(biome: biome_3, name: "Jaguar", has_legs: true, number_of_legs: 4, warm_blooded: true)
animal_9 = Animal.create!(biome: biome_3, name: "Parrot", has_legs: true, number_of_legs: 2, warm_blooded: true)