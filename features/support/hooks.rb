Before do
  @nav = Navbar.new
  @side = Sidebar.new
  @login_page = LoginPage.new
  @tarefas_pages = TarefasPage.new
  @perfil_pages = PerfilPage.new
end

Before('@login') do
  @usuario = { email: 'eu@papito.io', senha: '123456' }
  @login_page.acesso
  @login_page.logar(@usuario[:email], @usuario[:senha])
end

After('@logout') do
  @nav.sair
end
