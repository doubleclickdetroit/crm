class Contact < ActiveRecord::Base
  attr_accessible :address, :company_id, :email, :first_name, :last_name, :phone, :title, :website

  belongs_to :company
end
