class AddProfileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :text
    add_column :users, :dateofbirth, :date
    add_column :users, :weight, :integer
    add_column :users, :height, :integer
    add_column :users, :diet, :string
    add_column :users, :goal, :string
  end
end
