class AddProteinsToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :proteins, :string, array: true, default: []
  end
end
