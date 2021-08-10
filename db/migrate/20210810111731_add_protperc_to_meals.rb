class AddProtpercToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :protperc, :integer
  end
end
