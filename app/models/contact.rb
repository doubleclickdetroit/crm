class Contact < ActiveRecord::Base
  attr_accessible :address, :employer, :company_id, :email, :first_name, :last_name, :phone, :title, :website
  attr_accessor :employer

  belongs_to :company
end
