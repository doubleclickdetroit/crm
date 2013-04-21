class FixCompany < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
        t.rename :company, :employer
    end
  end
end
