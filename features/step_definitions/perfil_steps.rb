Dado('que estou autenticando com {string} e {string}') do |email, senha|
  @login_page.acesso
  @login_page.logar(email, senha)
end

Dado('acesso o meu perfil') do
  @side.acessa_perfil
end

Quando('completo o meu cadastro') do
end

Então('devo ver a mensagem de atualização cadastral:') do |mensagem|
end
