class AddHortpercToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :hortperc, :integer
  end
end
