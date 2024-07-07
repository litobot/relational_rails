class CreateBiomes < ActiveRecord::Migration[7.1]
  def change
    create_table :biomes do |t|
      t.string :name
      t.integer :percentage_of_earth
      t.boolean :plentiful_rain

      t.timestamps
    end
  end
end
