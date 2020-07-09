Before('@login') do
  @login_page = LoginPage.new
  @login_page.acesso
  @login_page.logar('eu@papito.io', '123456')
end

After('@logout') do
  find('.navbar a[href*=dropdown]').click
  find('.navbar a[href$=logout]').click
end