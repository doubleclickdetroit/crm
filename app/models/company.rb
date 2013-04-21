class Company < ActiveRecord::Base
  attr_accessible :address, :background, :email, :name, :phone, :website

  has_many :contacts
  has_many :cases
end
