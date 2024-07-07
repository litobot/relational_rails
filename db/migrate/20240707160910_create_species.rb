class CreateSpecies < ActiveRecord::Migration[7.1]
  def change
    create_table :species do |t|
      t.string :specie_name
      t.boolean :has_legs
      t.integer :number_of_legs
      t.boolean :warm_blooded

      t.timestamps
    end
  end
end
