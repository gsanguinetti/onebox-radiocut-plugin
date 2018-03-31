# name: onebox-radiocut-plugin
# version: 0.1
# authors: gsanguinetti

Onebox = Onebox

module Onebox
  module Engine
    class OneboxRadiocutPlugin
      include Engine
      
      matches_regexp(/^(https?:\/\/)?([\da-z\.-]+)(radiocut.fm\/)(.)+\/?$/)

      def to_html
        widget_url = @url.gsub('/app/','/widget/')
        widget_url = widget_url.gsub('http:','https:')
        "<iframe width='100%' height='320px' scrolling='no' frameborder='no' src='#{widget_url}' ></iframe>"
      rescue
        @url
      end
      
      # Placeholder is called at each interaction with editor, so do something less iframey
      def placeholder_html        
        widget_url = @url.gsub('/app/','/widget/')
        widget_url = widget_url.gsub('http:','https:')
        "<div style='width:100%; height:190px; display:block; background-color:black; color:white;'><div style='padding:10px;'><h2>Extracto Radiocut: #{widget_url}</h2><p>Va a ser reemplazado por el reproductor cuando se publique el post.</p></div></div>"
      rescue
        @url
      end
    end
  end
end
