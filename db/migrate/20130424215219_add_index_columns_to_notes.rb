class AddIndexColumnsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :company_id, :integer
    add_column :notes, :contact_id, :integer

    add_index :notes, :company_id
    add_index :notes, :contact_id
  end
end
