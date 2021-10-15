class AddChangeColumnNullToUserEmail < ActiveRecord::Migration[6.0]
  def self.up
    change_column :users, :email, :string, :null => true
  end

  def self.down
    change_column :users, :email, :string, :null => false
  end
end