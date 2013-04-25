class Note < ActiveRecord::Base
  attr_accessible :body, :occurance, :case_id, :company_id, :contact_id, :deal_id, :user_id
  validates_presence_of :body

  belongs_to :case
  belongs_to :company
  belongs_to :contact
end
