class Case < ActiveRecord::Base
  attr_accessible :active, :company_id, :name, :public

  belongs_to :company

  scope :active, where(:active => true)
  scope :public, where(:public => true)
end
