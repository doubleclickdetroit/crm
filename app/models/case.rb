class Case < ActiveRecord::Base
  attr_accessible :active, :business, :company_id, :name, :public
  attr_accessor :business

  belongs_to :company
  has_many :notes

  validates_presence_of :name

  scope :active, where(:active => true)
  scope :public, where(:public => true)
end
