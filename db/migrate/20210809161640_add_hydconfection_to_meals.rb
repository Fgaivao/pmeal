class AddHydconfectionToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :hydconfection, :string
  end
end
