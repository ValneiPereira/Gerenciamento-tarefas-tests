Dado('que eu acesso o sistema') do
  @login_page = LoginPage.new
  @login_page.acesso
end

Quando('faço login com {string} e {string}') do |email, senha|
  @login_page.logar(email, senha)
end

Então('vejo a mensagem de boas vindas {string}') do |mensagem|
  @tarefas_pages = TarefasPage.new
  expect(@tarefas_pages.painel).to have_content mensagem
end

Então('vejo a mensagem de alerta {string}') do |mensagem|
  alerta = find('.alert-login')
  expect(alerta).to have_content mensagem
end