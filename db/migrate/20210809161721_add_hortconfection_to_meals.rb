class AddHortconfectionToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :hortconfection, :string
  end
end
