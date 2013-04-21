class RemoveEmployerFromContact < ActiveRecord::Migration
  def up
    remove_column :contacts, :employer
  end

  def down
    add_column :contacts, :employer, :string
  end
end
