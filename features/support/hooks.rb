Before do
  @nav = Navbar.new
  @side = Sidebar.new
  @login_page = LoginPage.new
  @tarefas_pages = TarefasPage.new
end

Before('@login') do
  @login_page = LoginPage.new
  @login_page.acesso
  @login_page.logar('eu@papito.io', '123456')
end

After('@logout') do
  @nav.sair
end
