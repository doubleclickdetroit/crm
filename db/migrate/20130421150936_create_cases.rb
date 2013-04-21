class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.boolean :public
      t.boolean :active
      t.integer :company_id

      t.timestamps
    end
  end
end
