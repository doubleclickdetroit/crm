module NotesHelper

  #form
  def note_entity!(note)
    @entity = note.case    unless note.case_id.nil?
    @entity = note.contact unless note.contact_id.nil?
    @entity = note.company unless note.company_id.nil?
  end

  # form
  def display_label?(entity)
    return "this case"                if entity.is_a? Case
    return "this company"             if entity.is_a? Company
    return entity.first_name.titleize if entity.is_a? Contact
  end

  # form
  def display_instructions?(entity)
    entity.is_a?(Company) or entity.is_a?(Contact)
  end

  # note
  def edit_entity_note_path?(note)
    return edit_case_note_path    @entity, note if @entity.is_a? Case
    return edit_contact_note_path @entity, note if @entity.is_a? Contact
    return edit_company_note_path @entity, note if @entity.is_a? Company
  end

  # show
  def display_title?(entity)
    return entity.name              if entity.is_a? Case
    return entity.name              if entity.is_a? Company
    return contact_full_name entity if entity.is_a? Contact
  end

end
