require "rails_helper"


# User Story 1, Parent Index

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system

RSpec.describe Biome, type: :model do
  describe "relationship" do
    it { should have_many :species }
  end
end