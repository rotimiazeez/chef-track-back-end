class CreateChefs < ActiveRecord::Migration[6.1]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :price
      t.string :number_of_foods
      t.integer :duration

      t.timestamps
    end
  end
end
