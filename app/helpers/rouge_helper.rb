module RougeHelper


  def rouge(text, language)
    formatter = Rouge::Formatters::HTML.new
    #formatter = Rouge::Formatters::HTMLInline.new(Rouge::Theme.find('monokai'))

    formatter = Rouge::Formatters::HTMLLinewise.new(formatter, class: 'line-%i')
    lexer = Rouge::Lexer.find(language)
    formatter.format(lexer.lex(text))
  end
end