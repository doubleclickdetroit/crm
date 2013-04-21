class AddDefaultValuesToBooleanAttributes < ActiveRecord::Migration
  def change
    change_column :cases, :active, :boolean, default: true
    change_column :cases, :public, :boolean, default: true
  end
end
