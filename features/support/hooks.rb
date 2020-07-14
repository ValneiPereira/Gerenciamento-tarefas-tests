$pages = Pages::Pages

Before do
  @nav = $pages.login.navbar
  @side = Sidebar.new
  @tarefas_pages = TarefasPage.new
  @perfil_pages = PerfilPage.new
end

Before('@login') do
  @usuario = { email: 'eu@papito.io', senha: '123456' }
  @login = $pages.login
  @login.load
  @login.logar(@usuario[:email], @usuario[:senha])
end

After('@logout') do
  @nav.sair
end
