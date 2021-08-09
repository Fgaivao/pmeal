class AddProtconfectionToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :protconfection, :string
  end
end
