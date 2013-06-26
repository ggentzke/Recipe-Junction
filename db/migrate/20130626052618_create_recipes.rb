class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :diet
      t.string :author
      t.string :meal_type
      t.integer :serving_size
      t.text :ingredients
      t.text :instructions

      t.timestamps
    end
  end
end
