Dado('que estou autenticando com {string} e {string}') do |email, senha|
  @login_page.acesso
  @login_page.logar(email, senha)
end

Dado('acesso o meu perfil') do
  @side.acessa_perfil
end

Quando('completo o meu cadastro {string} e {string}') do |empresa, cargo|
  @perfil_pages.completa_cadastro(empresa, cargo)
end

Então('devo ver a mensagem de atualização cadastral:') do |mensagem|
  expect(@perfil_pages.alerta).to have_content mensagem
end
