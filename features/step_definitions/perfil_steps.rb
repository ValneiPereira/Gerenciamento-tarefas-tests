Dado('que estou autenticando com {string} e {string}') do |email, senha|
  @login_page = LoginPage.new
  @login_page.acesso
  @login_page.logar(email, senha)
end
  
Dado('que acesso o meu perfil') do
  within('aside[class=navigation]') do
    click_link 'Perfil'
  end
  sleep 10
end

  
Quando('completo o meu cadastro') do
    
end
  
Então('devo ver a mensagem de atualização cadastral:') do |mensagem|
    
end