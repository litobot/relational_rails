class Biome < ApplicationRecord
  # So the class is the table?
  has_many :animals

  def self.order_by_created_at
    order(created_at: :asc) 
  end
end

