require_relative '../sections/navbar.rb'
require_relative '../sections/sidebar.rb'

module Pages
  class Perfil < SitePrism::Page
    set_url '/user_settings/profile'

    element :div_alerta, '.alert-login'
    element :input_empresa, '#profile-company'
    element :select_cargo, 'select[name$=job]'
    element :option_cargo, 'option[value="cargo"]'
    element :btn_salvar, 'button[id*=btnLogin]'
    sleep 5

    def alerta
      div_alerta
    end

    section :navbar, Sections::Navbar, '.navbar'
    section :sidebar, Sections::Sidebar, 'ul.luna-nav'

    def completa_cadastro(empresa, cargo)
      # find('#profile-company').set empresa
      # combo = find('select[name$=job]')
      # combo.find('option', text: cargo).select_option
      input_empresa.set empresa
      option_cargo.select_option cargo
      btn_salvar.click
      sleep 2
    end
  end
end
