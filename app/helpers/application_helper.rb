module ApplicationHelper

  # Date Formatting
  def time_in_words(date)
    unless date.nil?
      now      = Time.now
      is_today = date >= now.beginning_of_day.utc && date < (now.utc + 6.hours)
      is_today ? "#{time_ago_in_words(date)} ago" : date.strftime("%A, %B %d")
    end
  end
  def created_or_updated_time_in_words(entity)
    text = entity.created_at == entity.updated_at ? "Created " : "Updated "
    "#{text} #{time_in_words entity.updated_at}"
  end

  # Business
  def company_name(entity)
    if entity.company then entity.company.name else "" end
  end

  # Buttons
  def add_button(label, resource_path)
    link_to content_tag(:i, '', class: 'icon-plus-sign') + " #{label}", resource_path, class: 'button small green'
  end
  def edit_button(label, resource_path)
    link_to content_tag(:i, '', class: 'icon-pencil') + " #{label}", resource_path, class: 'button small orange'
  end
  def delete_button(label, resource_path)
    link_to content_tag(:i, '', class: 'icon-trash') + " #{label}", resource_path, method: :delete, confirm: 'Are you sure you want to delete this?', class: 'button small red'
  end

  # Form
  def new_record?(obj)
    obj.object.new_record?
  end
  def submit_add_edit_button(obj, resource_path)
    button = obj.submit "#{new_record?(obj) ? 'Add' : 'Edit'} this #{obj.object.class.to_s}"
    button + raw(cancel_link_with_edit_button(obj, resource_path))
  end
  def cancel_link_with_edit_button(obj, resource_path)
    " or " + link_to('Cancel', resource_path) unless new_record? obj
  end

end
