module DeviseHelper
	# from baserails. Uses jquery. will modify
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t('errors.messages.not_saved', count: resource.errors.size,
      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-danger alert-dismissable">
      <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true"></span>
        <span class="sr-only">Close</span>
      </button>
      <h4>#{sentence}</h4>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end