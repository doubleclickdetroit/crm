class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :company
      t.string :phone
      t.string :email
      t.string :website
      t.string :address

      t.timestamps
    end
  end
end
