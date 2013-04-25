class NotesController < ApplicationController

  before_filter :get_entity_by_id!, except: :show

  # Entities
  def create
    @note = @entity.notes.create params[:note]
    redirect_to redirect_show_entity_path?
  end

  # Entities
  def edit
    @note = @entity.notes.find params[:id]
  end

  # Entities
  def update
    @note = @entity.notes.find params[:id]

    if @note.update_attributes params[:note]
      redirect_to redirect_show_entity_path?
    else
      redirect_to redirect_edit_entity_path?
    end
  end

  # Entities
  def destroy
    @note = @entity.notes.find params[:id]
    @note.destroy
    redirect_to redirect_show_entity_path?
  end

  # Notes
  def show
    @note = Note.find params[:id]
    get_entity_as_resource!(@note)

    respond_to do |format|
      format.html
      format.json { render json: @note }
    end
  end


private
  def get_entity_as_resource!(note)
    @entity = note.case    unless note.case_id.nil?
    @entity = note.contact unless note.contact.nil?
    @entity = note.company unless note.company.nil?
  end

  def get_entity_by_id!
    @entity = Case.find params[:case_id]       if params.has_key? :case_id
    @entity = Contact.find params[:contact_id] if params.has_key? :contact_id
    @entity = Company.find params[:company_id] if params.has_key? :company_id
  end

  def redirect_show_entity_path?
    return case_path    @entity if @entity.is_a? Case
    return contact_path @entity if @entity.is_a? Contact
    return company_path @entity if @entity.is_a? Company
  end

  def redirect_edit_entity_path?
    return edit_case_note_path    @entity if @entity.is_a? Case
    return edit_contact_note_path @entity if @entity.is_a? Contact
    return edit_company_note_path @entity if @entity.is_a? Company
  end

end
