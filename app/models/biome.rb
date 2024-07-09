class Biome < ApplicationRecord
  has_many :animals

  def self.order_by_created_at
    order(created_at: :asc) 
  end
end

