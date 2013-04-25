class ChangeOccuranceColumnToTimestamp < ActiveRecord::Migration
  def up
    remove_column :notes, :occurance
    add_column :notes, :occurance, :timestamp, null: false, default: Time.now.beginning_of_day.utc
  end

  def down
    remove_column :notes, :occurance
    add_column :notes, :occurance, :string
  end
end
