require "rails_helper"

RSpec.describe Biome, type: :model do
  describe "relationships" do
    it { should have_many :animals }
  end
end