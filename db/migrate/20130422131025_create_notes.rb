class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :text
      t.date :occurance
      t.integer :case_id
      t.integer :user_id
      t.integer :deal_id

      t.timestamps
    end
  end
end
