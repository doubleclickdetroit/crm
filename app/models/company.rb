class Company < ActiveRecord::Base
  attr_accessible :address, :background, :email, :name, :phone, :website

  has_many :contacts
  has_many :cases

  def self.find_or_create_company!(company_name)
    self.find(:first, conditions: [ "lower(name) = ?", company_name.downcase ]) || self.create(name: company_name)
  end
end
