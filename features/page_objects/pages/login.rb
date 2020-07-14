require 'sections/navbar.rb'

module Pages
  class Login < SitePrism::Page
    set_url '/login'

    element :input_login, '#login_email'
    element :input_senha, 'input[name=password]'
    element :btn_logar, 'button[id*=btnLogin]'
    element :alerta, '.alert-login'

    section :navbar, Sections::Navbar, '.navbar'

    def logar(email, senha)
      input_login.set email
      input_senha.set senha
      btn_logar.click
    end
  end
end