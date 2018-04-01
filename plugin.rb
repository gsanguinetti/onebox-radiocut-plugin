# name: onebox-radiocut-plugin
# version: 0.1
# authors: gsanguinetti
Onebox = Onebox
class Onebox::Engine::OneboxRadiocutPlugin
  include Onebox::Engine
  
  def self.priority
    0
  end
  
  matches_regexp /^https:\/\/radiocut\.fm\/audiocut\/declaracion-de-clemente-cancela-sobre-la-denuncia-a-joe-fernandez/

  def to_html
    "<div>hello</div>"
  end
end
