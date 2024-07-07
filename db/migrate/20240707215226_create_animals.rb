class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.boolean :has_legs
      t.integer :number_of_legs
      t.boolean :warm_blooded
      t.references :biome, null: false, foreign_key: true

      t.timestamps
    end
  end
end
