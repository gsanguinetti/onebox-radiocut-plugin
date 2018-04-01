# name: onebox-radiocut-plugin
# version: 0.1
# authors: gsanguinetti

Onebox = Onebox
module Onebox
  module Engine
    class RadiocutOnebox
      include Engine
      include StandardEmbed
      
      def self.priority
        0
      end
      
      REGEX = /^https?:\/\/radiocut.fm\/audiocut\/(.*?)(\/|$)/
      matches_regexp REGEX
      always_https
      
      def id
        @url.match(REGEX)[1]
      end

      def to_html
        "<iframe width='100%' height='175px' scrolling='no' frameborder='no' src='//radiocut.fm/audiocut/embed/hori/#{id}'></iframe>"
      end
    end
  end
end
