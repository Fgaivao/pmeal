class AddVegetablesToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :vegetables, :string, array: true, default: []
  end
end
