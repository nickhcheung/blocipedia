module WikisHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new
    extensions = {
      tables: true,
      autolink: true,
      strikethrough: true,
      tables: true,
      quote: true,
      highlight: true,
      underline: true,
      footnotes: true
    }
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
