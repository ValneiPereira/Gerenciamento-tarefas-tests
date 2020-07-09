Dado('que eu acesso o sistema') do
  @login_page.acesso
end

Quando('faço login com {string} e {string}') do |email, senha|
  @login_page.logar(email, senha)
end

Então('vejo a mensagem de boas vindas {string}') do |mensagem|
  expect(@tarefas_pages.painel).to have_content mensagem
end

Então('vejo a mensagem de alerta {string}') do |mensagem|
  expect(@login_page.alerta).to have_content mensagem
end