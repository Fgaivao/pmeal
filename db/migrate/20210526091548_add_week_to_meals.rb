class AddWeekToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :week, :integer
  end
end
