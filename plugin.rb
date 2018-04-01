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
  
      matches_regexp /^https:\/\/radiocut\.fm\/audiocut/

      def to_html
        "<div>hello</div>"
      end
    end
  end
end
