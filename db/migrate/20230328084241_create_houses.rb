class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|

      t.string :title
      t.string :location
      t.string :desc
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
