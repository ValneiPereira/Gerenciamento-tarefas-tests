$pages = Pages::Pages
$perfil = Pages::Pages
$sidebar= Sections::Sections
Before do
  @tarefas_pages = TarefasPage.new
end

Before('@login') do
  @usuario = { email: 'eu@papito.io', senha: '123456' }
  @login = $pages.login
  @login.load
  @login.logar(@usuario[:email], @usuario[:senha])
end

After('@logout') do
  @nav = $pages.login.navbar
  @nav.sair
end