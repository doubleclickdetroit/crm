class AddIndexesToNotes < ActiveRecord::Migration
  def change
    add_index :notes, :case_id
  end
end
