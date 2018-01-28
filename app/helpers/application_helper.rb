module ApplicationHelper
  # set resource for image
  def set_image_resource(resource, size = "151x201", text = "Captured Image")
    if resource.image_data?
      resource.image_url
    else
     "https://placehold.it/#{size}?text=#{}"
    end
  end

  def icon_edit(value)
   content_tag(:i, value, :class => "fa fa-pencil-square-o")
  end

  def icon_delete(value)
   content_tag(:i, value, :class => "fa fa-trash-o")
  end

  def icon_print(value)
   content_tag(:i, value, :class => "fa fa-print")
  end

  def icon_check(value)
   content_tag(:i, value, :class => "fa fa-check")
  end

  def icon_times(value)
   content_tag(:i, value, :class => "fa fa-times")
  end

  def icon_lock(value)
   content_tag(:i, value, :class => "fa fa-lock")
  end

  def icon_plane(value)
    content_tag(:i, value, :class => "fa fa-paper-plane-o")
  end

  def icon_out(value)
    content_tag(:i, value, :class => "fa fa-sign-out")
  end

  def icon_plus(value)
    content_tag(:i, value, :class => "fa fa-plus-square")
  end

  def icon_graduate(value)
    content_tag(:i, value, :class => "fa fa-graduation-cap")
  end

  def icon_save(value)
    content_tag(:i, value, :class => "fa fa-floppy-o")
  end

  def icon_excel(value)
    content_tag(:i, value, :class => "fa fa-file-excel-o")
  end

  def icon_download(value)
    content_tag(:i, value, :class => "fa fa-download")
  end

  def icon_pdf(value)
    content_tag(:i, value, :class => "fa fa-file-pdf-o")
  end
end
