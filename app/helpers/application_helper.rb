module ApplicationHelper
  def markdown_to_html(text)
    options = []
    Markdown.new(text, *options).to_html.html_safe
  end
end
