class AddHealtyscoreToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :healthyscore, :integer
  end
end
