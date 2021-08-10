class AddHydpercToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :hydperc, :integer
  end
end
