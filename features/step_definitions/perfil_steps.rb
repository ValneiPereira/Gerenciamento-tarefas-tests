Dado('que estou autenticando com {string} e {string}') do |email, senha|
  @login = $pages.login(email, senha)
  @login.load
end

Dado('acesso o meu perfil') do
  $sidebar.acessa_perfil
end

Quando('completo o meu cadastro {string} e {string}') do |empresa, cargo|
  $perfil.completa_cadastro(empresa, cargo)
end

Então('devo ver a mensagem de atualização cadastral:') do |mensagem|
  expect(@perfil_pages.alerta).to have_content mensagem
end
