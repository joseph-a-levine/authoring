module Jekyll
  class RenderSideNoteTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<label for='#{@text}' class='margin-toggle sidenote-number'></label><input type='checkbox' id='#{@text}' class='margin-toggle'/><span class='sidenote'>#{@text}</span>"
    end
  end
end

Liquid::Template.register_tag('sidenote', Jekyll::RenderSideNoteTag)