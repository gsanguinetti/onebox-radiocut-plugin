# name: onebox-radiocut-plugin
# version: 0.1
# authors: gsanguinetti
Onebox = Onebox
class Onebox::Engine::OneboxRadiocutPlugin
  include Onebox::Engine
  
  matches_regexp(/https:\/\/radiocut\.fm\/audiocut\/matias-martin-banca-a-clemente-cancela/)

  def to_html
    "<iframe width='100%' height='320px' scrolling='no' frameborder='no' src='#{@url}' ></iframe>"
  end
end
