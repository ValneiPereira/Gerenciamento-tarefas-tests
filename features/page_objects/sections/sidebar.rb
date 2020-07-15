module Sections
  class Sidebar < SitePrism::Section
    element :a_perfil, 'a[href="/user_settings"]'

    def acessa_perfil
      a_perfil.click
    end
  end
end
