class ChangeTextToBodyFieldNameInNotes < ActiveRecord::Migration
  def change
    rename_column :notes, :text, :body
  end
end
