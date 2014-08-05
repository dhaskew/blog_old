module Jekyll
    class KeyboardShortcutTag < Liquid::Tag

          FUNCTION_KEYS = ["F1","F2","F3","F4","F5","F6","F7","F8","F9","F10","F11","F12"]

          def initialize(tag_name, text, tokens)
            super
            @text = text
          end

          def render(context)
            #"#{@text}"
            insert = ""
            words_array = @text.split(' ').each do |word|
              if(word.downcase == "command")
                insert += "<div class='key_command'>#{word}  ⌘</div>"
              elsif(FUNCTION_KEYS.count(word.upcase) == 1)
                insert += "<div class='key_function'>#{word}</div>"
              else
                insert += "<div class='key_normal'>#{word}</div>"
              end
            end
            #insert = "<div class='key_command'>#{@text}</div>"
            html = Kramdown::Document.new(insert).to_html
          end
    end
end

Liquid::Template.register_tag('keyboard_shortcut', Jekyll::KeyboardShortcutTag)
