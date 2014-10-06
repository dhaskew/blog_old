# http://wolfslittlestore.be/2013/10/rendering-markdown-in-jekyll/
# http://jekyllrb.com/docs/plugins/

module Jekyll
  class TwitterTagTag < Liquid::Tag

      def initialize(tag_name, text, tokens)
        super
        @text = text
      end

      def render(context)
        insert = ""
        words_array = @text.split(' ').each do |word|
            #insert += "<div class='twitter_tag'>##{word}</div>"
            insert += "<a href='https://twitter.com/search?q=%23#{word}'>##{word}</a> "
        end
            #insert = "<div class='key_command'>#{@text}</div>"
            html = Kramdown::Document.new(insert).to_html
      end

    end
end

Liquid::Template.register_tag('twitter_tag', Jekyll::TwitterTagTag)
