class AddHydratesToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :hydrates, :string, array: true, default: []
  end
end
