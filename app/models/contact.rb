class Contact < ActiveRecord::Base
  attr_accessible :address, :employer, :company_id, :email, :first_name, :last_name, :phone, :title, :website
  attr_accessor :employer

  belongs_to :company
  has_many :notes

  def display_name
    last_name
  end
end
