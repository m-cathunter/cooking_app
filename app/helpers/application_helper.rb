module ApplicationHelper

  def markdown_to_html(text)
    options = []
    Markdown.new(text.to_s, *options).to_html.html_safe
  end
end
