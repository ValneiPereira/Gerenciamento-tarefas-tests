module Sections
  class Navbar < SitePrism::Section
    element :btn_menu, 'a[href*=dropdown'
    element :btn_logout, 'a[href$=logout]'

    def sair
      btn_menu.click
      btn_logout.click
    end
  end
end