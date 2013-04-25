module ContactsHelper
  def contact_full_name(contact)
    "#{contact.first_name.titleize} #{contact.last_name.titleize}"
  end
end
